<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <style>
        .profile a {
            display: block;
            width: 50px;
            height: 50px;
            
        }
        .profile a img {
            border: 1px solid rgb(116, 114, 114);
            border-radius: 10px;
            position: relative;
            top: -20%;
        }
    </style>
</head>

<body>
    <div class="wrap">
        <!-- header -->
        <header>
            <div class="inner-header">
                <h1 class="logo">
                    <a href="#">
                        <img src="img/main_logo.png" alt="무비피디아 로고이미지">
                    </a>
                </h1>

                <!-- 네비게이션 부분 -->
                <nav class="gnb">
                    <ul>
                        <li><a id="boxOffice" href="/movie/boxoffice">박스오피스</a></li>
                        <li><a href="/movie/screening">현재상영작</a></li>
                        <li><a href="/movie/screenyet">상영예정작</a></li>
                    </ul>
                </nav>

                <nav class="tnb">
                    <ul>
                        <li>
                            <form action="/search" method="get" class="search">
                                <label>
                                    <span class="lnr lnr-magnifier"></span>
                                    <input type="text" placeholder="영화를 검색해보세요." name="searchKey" id="search">
                                </label>
                            </form>
                        </li>
                        <li><a href="#">${mem.memName}님</a></li>
                        <li class="profile">
                            <a href="#">
                                <img src="#" alt="프로필사진">
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->


        <!-- section movie-content -->
        <section class="movie-content">
            <div class="movie-rank" id="boxOfficeRank">
                <div class="movie-rank-title">
                    <p>박스오피스 순위</p>
                </div>
                <div class="movie-box">
                    <div class="movies">
                        <ul>
                            <li>
                                <a href="/detail?movieNo=1">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU"
                                            alt="장르만 로맨스" class="img">
                                        <div class="rank-num">1</div>
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">장르만 로맨스</div>
                                        <div class="m-op-county">2021 | 한국</div>
                                        <div class="movie-grade">★3.0 (568명)</div>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="/detail?movieNo=2">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/5802f39e2dadd2eec855e26a0e59aea5.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LmJuZFBXclFhVFp4U3hrRzMxRTFXNmxRcXdjUm9ZaVRDX1c5WlhBMUNsTEE"
                                            alt="이터널스" class="img">
                                        <div class="rank-num">2</div>
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">이터널스</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.1 (2만명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/5802f39e2dadd2eec855e26a0e59aea5.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LmJuZFBXclFhVFp4U3hrRzMxRTFXNmxRcXdjUm9ZaVRDX1c5WlhBMUNsTEE"
                                            alt="이터널스" class="img">
                                        <div class="rank-num">3</div>
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">이터널스</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.1 (2만명)</div>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/70a085e41044b6622945c471bc8a1078.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNME5qSTVOalU0TVRBMk9URTFOemsySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LnNLNUVteTZVQWJOWjBrWWMwcFhUSW9WdDJrT0s0Nk9Qc3VNazh5bVROOG8"
                                            alt="디어에반핸슨" class="img">
                                        <div class="rank-num">4</div>
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">디어 에반 핸슨</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.0 (646명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/63456fa9804b8ba4729c5e61e4d540cb.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeU56a3hPREk1TXpBeE16VTRNalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lkpxci1MZWF1Nmx3YTZLNVM4V2RUWkRhdDhqanNQWkUzQkloWXpaSnkyREU"
                                            alt="듄" class="img">
                                        <div class="rank-num">5</div>
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">듄</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.9 (4만명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/c37d92cb68e27b2b9524c335b20e4bca.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNME56YzROVFV5TWpFME9EYzNPRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LkdqNFhHT3hVb0dBQ0hHZkExMXhHR3VyZnd1aGllNzVjNVlQb3JlbFp2bjA"
                                            alt="프렌치 디스패치" class="img">
                                        <div class="rank-num">6</div>
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">프렌치 디스패치</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.9 (230명)</div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="arrow-btn left">
                        <span class="lnr lnr-chevron-left-circle"></span>
                    </div>
                    <div class="arrow-btn right">
                        <span class="lnr lnr-chevron-right-circle"></span>
                    </div>
                </div>

            </div>

            <div class="movie-rank" id="showing">
                <div class="movie-rank-title">
                    <p>현재상영작</p>
                </div>
                <div class="movie-box">
                    <div class="movies">
                        <ul>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU"
                                            alt="장르만 로맨스" class="img">
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">장르만 로맨스</div>
                                        <div class="m-op-county">2021 | 한국</div>
                                        <div class="movie-grade">★3.0 (568명)</div>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/5802f39e2dadd2eec855e26a0e59aea5.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LmJuZFBXclFhVFp4U3hrRzMxRTFXNmxRcXdjUm9ZaVRDX1c5WlhBMUNsTEE"
                                            alt="이터널스" class="img">
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">이터널스</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.1 (2만명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/70a085e41044b6622945c471bc8a1078.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNME5qSTVOalU0TVRBMk9URTFOemsySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LnNLNUVteTZVQWJOWjBrWWMwcFhUSW9WdDJrT0s0Nk9Qc3VNazh5bVROOG8"
                                            alt="디어에반핸슨" class="img">
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">디어 에반 핸슨</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.0 (646명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/63456fa9804b8ba4729c5e61e4d540cb.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeU56a3hPREk1TXpBeE16VTRNalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lkpxci1MZWF1Nmx3YTZLNVM4V2RUWkRhdDhqanNQWkUzQkloWXpaSnkyREU"
                                            alt="듄" class="img"></div>
                                    <div class="movie-info">
                                        <div class="movie-title">듄</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.9 (4만명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/c37d92cb68e27b2b9524c335b20e4bca.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNME56YzROVFV5TWpFME9EYzNPRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LkdqNFhHT3hVb0dBQ0hHZkExMXhHR3VyZnd1aGllNzVjNVlQb3JlbFp2bjA"
                                            alt="프렌치 디스패치" class="img">
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">프렌치 디스패치</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.9 (230명)</div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="arrow-btn left">
                        <span class="lnr lnr-chevron-left-circle"></span>
                    </div>
                    <div class="arrow-btn right">
                        <span class="lnr lnr-chevron-right-circle"></span>
                    </div>
                </div>
            </div>

            <div class="movie-rank" id="screenYet">
                <div class="movie-rank-title">
                    <p>상영예정작</p>
                </div>
                <div class="movie-box">
                    <div class="movies">
                        <ul>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU"
                                            alt="장르만 로맨스" class="img">
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">장르만 로맨스</div>
                                        <div class="m-op-county">2021 | 한국</div>
                                        <div class="movie-grade">★3.0 (568명)</div>

                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/5802f39e2dadd2eec855e26a0e59aea5.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LmJuZFBXclFhVFp4U3hrRzMxRTFXNmxRcXdjUm9ZaVRDX1c5WlhBMUNsTEE"
                                            alt="이터널스" class="img">
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">이터널스</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.1 (2만명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/70a085e41044b6622945c471bc8a1078.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNME5qSTVOalU0TVRBMk9URTFOemsySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LnNLNUVteTZVQWJOWjBrWWMwcFhUSW9WdDJrT0s0Nk9Qc3VNazh5bVROOG8"
                                            alt="디어에반핸슨" class="img">
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">디어 에반 핸슨</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.0 (646명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/63456fa9804b8ba4729c5e61e4d540cb.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeU56a3hPREk1TXpBeE16VTRNalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lkpxci1MZWF1Nmx3YTZLNVM4V2RUWkRhdDhqanNQWkUzQkloWXpaSnkyREU"
                                            alt="듄" class="img"></div>
                                    <div class="movie-info">
                                        <div class="movie-title">듄</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.9 (4만명)</div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="movie-img">
                                        <img src="https://an2-img.amz.wtchn.net/image/v2/c37d92cb68e27b2b9524c335b20e4bca.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNME56YzROVFV5TWpFME9EYzNPRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LkdqNFhHT3hVb0dBQ0hHZkExMXhHR3VyZnd1aGllNzVjNVlQb3JlbFp2bjA"
                                            alt="프렌치 디스패치" class="img">
                                    </div>
                                    <div class="movie-info">
                                        <div class="movie-title">프렌치 디스패치</div>
                                        <div class="m-op-county">2021 | 미국</div>
                                        <div class="movie-grade">★3.9 (230명)</div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="arrow-btn left">
                        <span class="lnr lnr-chevron-left-circle"></span>
                    </div>
                    <div class="arrow-btn right">
                        <span class="lnr lnr-chevron-right-circle"></span>
                    </div>
                </div>
            </div>
        </section>
        <!-- //section movie-content -->


        <!-- footer -->
        <footer>
            <ul>
                <li>고객센터</li>
                <li>ABOUT US</li>
                <li> &#xa9 MOVIE PEDIA 2021 <br>All Rights Reseved</li>
            </ul>
        </footer>
        <!-- //footer -->
    </div>
</body>


</html>