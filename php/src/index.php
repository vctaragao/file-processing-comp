<?php
// Thats not how a php code looks like in the real world, its just a script to test a process


$file = fopen(__DIR__ . '/../gen_report_13MB.csv', 'r');

$lines = readCsvLine($file);

$start = microtime(true);

foreach ($lines as $line) {
    // just go through the hole file
}

echo "Tempo de execução: " . round((microtime(true) - $start), 2) . "s" . PHP_EOL;
echo "Memória alocada: " . (memory_get_usage(true) / 1048576) . " Mb" . PHP_EOL;


function readCsvLine($file)
{
    while ($line = fgetcsv($file)) {
        yield $line;
    }
}
