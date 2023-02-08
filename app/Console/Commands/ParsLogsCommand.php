<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class ParsLogsCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'logs:pars';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This command will pars log file';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        set_time_limit(0);
        ini_set('memory_limit', '-1');
        
        $logFile = storage_path('logs.txt');
        $inserFile = storage_path('insert.txt');
  
        $convertCommand = "sed  's/^/insert into logs values("
        .'"/;s/-service - [[]/",STR_TO_DATE("/; s/[]].*" /", "%d\/%b\/%Y:%H:%i:%s"),/;s/$/);/'
        ."'  ".$logFile." > ".$inserFile;

        shell_exec($convertCommand);
        return Command::SUCCESS;
    }
}
