<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\User\CreateFormRequest;
use App\Http\Requests\User\UpdateFormRequest;
use App\Models\User;
use App\Traits\DeleteModelTrait;
use App\Traits\TrashTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    use DeleteModelTrait;
    use TrashTrait;

    private $user;
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = $this->user->all();
        return view('admin.user.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.user.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateFormRequest $request)
    {
        try {
            $dataCreate = [
                'name' => $request->username,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'role' => $request->role,
                'status' => $request->status,
            ];
    
            $this->user->create($dataCreate);
    
            return redirect()->route('user.index')->with('success', 'Created Successfully.');

        } catch(\Throwable $th) {
            Log::error('Message: ' . $th->getMessage());

            return redirect()->back()->with('error', 'Create Failed! Please Try Again.');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {
        return view('admin.user.edit', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateFormRequest $request, User $user)
    {
        try {
            $dataUpdate = [
                'name' => $request->username,
                'email' => $request->email,
                'role' => $request->role,
                'status' => $request->status,
            ];
    
            $user->update($dataUpdate);
    
            return redirect()->route('user.index')->with('success', 'Updated Successfully.');

        } catch(\Throwable $th) {
            Log::error('Message: ' . $th->getMessage());

            return redirect()->back()->with('error', 'Update Failed! Please Try Again.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        if($user->id == Auth::user()->id) {
            abort(403);
        } else {
            return $this->deleteModelTrait($user->id, $this->user);
        }
    }
}
