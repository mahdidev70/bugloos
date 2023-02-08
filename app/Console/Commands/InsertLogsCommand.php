<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class InsertLogsCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'logs:insert';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'It will insert logs into database';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        set_time_limit(0);
        ini_set('memory_limit', '-1');

        $inserFile = storage_path('insert.txt');
        $dataBase = env('DB_DATABASE');

        $insertCommand = "mysql -uroot -p ".$dataBase." < ".$inserFile;
        shell_exec($insertCommand);

        return Command::SUCCESS;
    }
}
