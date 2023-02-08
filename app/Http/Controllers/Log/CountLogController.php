<?php

namespace App\Http\Controllers\Log;

use App\Models\Log;
use App\Services\Responser;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;

class CountLogController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    /**
     * @QAparam service_name string
     * @QAparam status integer
     * @QAparam start date
     * @QAparam end date
     */
    public function __invoke(Request $request)
    {
        $filter = [];
        $query = Log::query();

        $serviceNames = $request->get('service_names');
        if ($serviceNames) {
            $query->whereIn('service_name',explode(',', $serviceNames));
        }

        $statusCode = $request->get('status');
        if ($statusCode) {
            $query->whereIn('status',explode(',', $statusCode));
        }

        $start = $request->get('start');
        if ($start) {
            $start = Carbon::createFromFormat('Y-m-d',$start);
            $query->whereDate('time','>',$start);
        }

        $end = $request->get('end');
        if ($end) {
            $end = Carbon::createFromFormat('Y-m-d',$end);
            $query->whereDate('time','<',$end);
        }

        $result = $query->count();
        $data = [
            'count'=> $result
        ];
        $content = [
            'serviceName' => $serviceNames,
            'statusCode' => $statusCode,
            'start' => $start,
            'end' => $end
        ];
        return Responser::success($content,'count',$data);
    }
}
