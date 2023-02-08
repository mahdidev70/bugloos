<?php

namespace Tests\Feature\Controller;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CountLogsControllerTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_example()
    {
        $response = $this->get(route('calculate.log.count'));
        $response->assertStatus(200);

        $response = $this->get(route('calculate.log.count',[
            'start' => '2022-09-17'
        ]));
        $response->assertStatus(200);

        $response = $this->get(route('calculate.log.count',[
            'end' => '2022-09-17'
        ]));
        $response->assertStatus(200);

        $response = $this->get(route('calculate.log.count',[
            'status' => '422,201'
        ]));
        $response->assertStatus(200);


        $response = $this->get(route('calculate.log.count',[
            'service_name' => 'order'
        ]));
        $response->assertStatus(200);
    }
}
