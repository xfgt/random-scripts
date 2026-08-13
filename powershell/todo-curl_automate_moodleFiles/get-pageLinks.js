const links = document.querySelectorAll('.course-content a');
let allUrls = [];

links.forEach(link => {
    let href = link.href;
    // Взима само линкове, които водят към модули (файлове, папки, страници)
    if (href && href.includes('/mod/resource')) { // смени с /mod/ ако искаш всичко


        // Ако е директен ресурс, добавяме redirect за автоматично сваляне
        if (href.includes('mod/resource/view.php') && !href.includes('&redirect=1')) {
            href += '&redirect=1';
        }


        allUrls.push(href);
    }

    
});

console.log([...new Set(allUrls)].join('\n'));


/*
example:



https://e-edu.nbu.bg/mod/resource/view.php?id=1291131&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=1291132&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=389261&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=318197&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1450234
https://e-edu.nbu.bg/mod/resource/view.php?id=318198&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=319507&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=1452230&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=320968&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1455317
https://e-edu.nbu.bg/mod/resource/view.php?id=1455760&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=322268&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1456384
https://e-edu.nbu.bg/mod/resource/view.php?id=323009&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1459006
https://e-edu.nbu.bg/mod/resource/view.php?id=323141&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1460935
https://e-edu.nbu.bg/mod/resource/view.php?id=323292&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1462502
https://e-edu.nbu.bg/mod/resource/view.php?id=323294&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1463723
https://e-edu.nbu.bg/mod/resource/view.php?id=323295&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1468152
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1469090
https://e-edu.nbu.bg/mod/resource/view.php?id=323297&redirect=1
https://e-edu.nbu.bg/mod/bigbluebuttonbn/view.php?id=1470321
https://e-edu.nbu.bg/mod/resource/view.php?id=204381&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=519452&redirect=1
https://e-edu.nbu.bg/mod/resource/view.php?id=946514&redirect=1
https://e-edu.nbu.bg/mod/quiz/view.php?id=1470548
https://e-edu.nbu.bg/mod/quiz/view.php?id=1470554

*/
