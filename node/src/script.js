const fs = require('fs')
const parse = require('csv-parse')

fileStream = fs.createReadStream('/app/gen_report_13MB.csv')

const start = new Date()

fileStream
    .pipe(parse({ delimiter: ',' }))
    .on('data', line => { })
    .on('end', () => {
        const stop = new Date()
        console.log(`Tempo de execução: ${(stop - start) / 1000} s`)

        const formatMemoryUsage = (data) => `${Math.round(data / 1024 / 1024 * 100) / 100} MB`

        const memoryData = process.memoryUsage()

        console.log(`Memória alocada: ${formatMemoryUsage(memoryData.heapTotal)} Mb`)
    })





