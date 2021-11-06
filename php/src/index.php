<?php

$file = fopen(__DIR__ . '/../gen_report.csv', 'r');

$lines = readCsvLine($file);

$start = microtime(true);

foreach ($lines as $line) {
    // just go through the hole file
}

echo "Memória máxima usada: " . (memory_get_peak_usage(true) / 1048576) . "Mb" . PHP_EOL;
echo "Tempo de execução: " . round((microtime(true) - $start), 2) . "s" . PHP_EOL;


function readCsvLine($file)
{
    while ($line = fgetcsv($file)) {
        yield $line;
    }
}
