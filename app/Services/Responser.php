<?php

namespace App\Services;

class Responser
{
    public static function success($content = null, $title = null, $data = [])
    {
        $content = $content ?: trans('messages.success_content');
        $title = $title ?: trans('messages.success_title');
        return [
            'data' => $data,
            'message' => [
                'title' => $title,
                'content' => $content
            ]
        ];
    }

    public static function error($errors = null, $data = [])
    {
        $errors = $errors ?: [trans('messages.error_title') => trans('messages.error_content')];
        return [
            'data' => $data,
            'errors' => $errors,
        ];
    }

    public static function data($data)
    {
        return [
            'data' => $data,
        ];
    }
}
