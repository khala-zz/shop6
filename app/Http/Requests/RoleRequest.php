<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RoleRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|unique:roles,name',
            'permissions' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Tên vai trò không được bỏ trống',
            'permissions.required' => 'Vui lòng chọn phân quyền',
            'name.unique' => 'Tên vai trò không được trùng'
            
        ];
    }
}
