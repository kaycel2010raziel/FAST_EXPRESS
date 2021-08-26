-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2021 a las 22:15:08
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fast_express`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `IDBITACORA` int(11) NOT NULL,
  `TABLA` varchar(45) DEFAULT NULL,
  `OPERACION` varchar(45) DEFAULT NULL,
  `USUARIO` varchar(45) DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo`
--

CREATE TABLE `codigo` (
  `IDCODIGO` int(11) NOT NULL,
  `NOMBRE` varchar(45) DEFAULT NULL,
  `DESCRIPCION` varchar(500) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FKTIPO_CODIGO` int(11) NOT NULL,
  `FKESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `codigo`
--

INSERT INTO `codigo` (`IDCODIGO`, `NOMBRE`, `DESCRIPCION`, `FECHA_CREACION`, `FKTIPO_CODIGO`, `FKESTADO`) VALUES
(1, 'DRP1', '\nLa dirección es correcta pero la persona es desconocida.\n\n\nLa dirección es correcta pero la persona es desconocida.\n\nLa dirección es correcta pero la persona es desconocida.', '2021-08-26 14:08:50', 1, 2),
(2, 'DIN', 'La direction es incorrecta.', '2021-08-26 14:08:54', 1, 2),
(3, 'NP2', 'No estaba la persona. (Cuando no se pudiere dejar debajo de la puerta o de ninguna manera)', '2021-08-26 14:02:39', 1, 2),
(4, 'NOR1', 'No lo quisieron recibir.', '2021-08-26 14:02:39', 1, 2),
(5, 'SMR', 'Se mudó de residencia.', '2021-08-26 14:05:05', 1, 2),
(6, 'SMT', 'Se mudó de trabajo', '2021-08-26 14:05:05', 1, 2),
(7, 'FP', 'La persona ya falleció', '2021-08-26 14:05:57', 1, 2),
(8, 'AR1', 'Zona de alto riesgo.', '2021-08-26 14:05:57', 1, 2),
(9, 'CDA', 'Casa desocupada no vive nadie', '2021-08-26 14:06:19', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `IDDEPARTAMENTO` int(11) NOT NULL,
  `NOMBRE` varchar(45) DEFAULT NULL,
  `REGION` varchar(45) DEFAULT NULL,
  `POLIGONO` varchar(500) DEFAULT NULL,
  `COD_COLOR` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`IDDEPARTAMENTO`, `NOMBRE`, `REGION`, `POLIGONO`, `COD_COLOR`, `FECHA_CREACION`) VALUES
(0, 'Belice', '0', 'o{lcBxvuzOdFeAdBUzAeALuBPoCdBcBfBXlAeCkBm@cBJcCHgCMuBc@wCoByBuA_Br@b@hCzAxCr@xAj@hB`@`BHrCk@tBuA|@mBEmCiBwA{B[_Ba@gBm@gB}@iB{@qAcA{AgAiA}CsCcB_@mBGaBwAToBnC{@jM_B|CSbET|D~AbBd@zDf@fBRzAb@vB|@~BNdD_ArB[zBr@AjCAnBx@tBlBjBpAfBHnCkCpCaAvAY|BAfBV`DbAfE@nC_@jBiBd@qAiBQeDgB]q@rBgAhBoBpBOnCCnBTvDfAlDbB~C|BvBzBnB^fCB|C|ApCdBrAjBdAvCv@rCb@~C\\zD^fFGnCS|Dy@lCw@|C_@bBOxBcAvAwApBd@HjBg@|AwBVcC`@_Cp@iB~AqAnBu@hBe@rB]`EO`B{@zCgA`C_Cp@i@cBBoCcAgB{Ad@gAzAeA`CkApC{@rByAhCuBjDaBzBcBvBeCfCkA`AeBdBwCCaBuBqCOsAt@iA|BI', '#030E12', '2019-05-15 21:03:04'),
(1, 'Guatemala', '1', 'evqyAd}wfPdCgBrAsCDmD_AaHW}CAaCPoBp@wA`QiQhAiCh@oBdAeCxAuChAoCp@yC\\_Cf@{CT{CHgBAyDIaCq@{EeAgEy@eDe@uDKkBKeCCwDCuE?wBIqBs@oBw@{Aa@gB@kDXoCJcB@oC{@yCcAgCMuC^}C|@gBpC_CvByAbAuBd@yEJqBB{BD}CMiCu@}DWwCBaLYeEk@eBk@_Bu@sCSeD@}Cz@iC`CwBnAaAdBqBRgBSoCoBoEgAwDKgB?sCXkCnA{BjAqAfC{BjB_BhC}A~AyAu@eCqAeCPiDx@{BxBgFp@yBl@eC`@uBXyCd@mCrAcD~@iApCkCzAiAxAq@fBq@dCc@`FDpEJzCO~Au@rB_B~AsBr@sCb@{Bl@cCfAmCfA_A|Co@bUPrCI~@iC}AmCyKkI}@_CH{CpAiC~BEbChAbBbBzDz@bHRnEKhDOdBG~BKfCCtBApIVZxCHxC|AjGhGlTx@|Bv@~CJ~BJbBHlBf@~BzA|', '#0AB8F9', '2019-05-15 05:06:36'),
(2, 'El Progreso', '5', '}p}zApcicPxt@{~@hQeQpg@yo@rYcWrJwKbEaE`SaN|WgO|LgI~d@u^`CoElBBtRqMPgBtYwTxR{BnItC`DnExDlIHzEsKzrBBdbDwK`u@oOto@uUrpAwAfW|AzDzNnCbUoHlAcEzCe@jIiIfTaNbS_SxQ_HtEsE~CwCpL{MnJ}HzIyAjOuHjXcK|C{C|Y{IfRkNf[fApDlDfIXnQvF`q@lHlZdApCc@dGkJpFyBfNr@vNjErEYjDoCTyEaCwI{C}C}G}HD}E|DoMlPh@hD{E~CCxGeGrBaJwCaL_FuHcOiCuLeK_Bce@|AuSvCyMdFmF~HyCdIiHjGIfIeE`AxBnEhHnAhA`B~@bBR`CHfBKvGc@vJm@vE@|BJjB`@|A`A|ArB`AnBlA|CnDvArBkBnP_NrJeEhNJvA`BbDUvC~CnCMp^pB~|@q@xKjDfFdJpDnRoDzr@xCpL~T|Sf@hIdGlSxGzFl]vNxQ~MvFtD`DDle@`TbZzGhM', '#F9CD0A ', '2019-05-15 05:06:36'),
(3, 'Sacatepéquez', '2', 'eznxAfrlhPdDuGxFe]|Wcx@v@qLfB{BbAaRlJwY`MkPjJoVpLiOfj@bCt[n@n_B~VlKqLdH{JQaWvKgMrPgAfFvBjHnMdFjDhMdJx[XrIyChXaB|BgBtEa@fNeJpSca@dGiSdB{QfCgF~Bg\\nGoTbFwCxTkB|O`BfJvGxBlJtCbc@kK`f@ZlIdBlAlBpFxOv@fp@cH|U|DdOpJVfIqFjKyAdCiOvEeNp@{CzCqZ~Kmc@nj@{KfQaC~IgGfr@n@tQrI`PhMbE|[bB`MgC`T}RrYaf@nLs^lLuNdOwKhLdAtFxEtGt\\nAhD~BtGjA`CdD`B~T`AfP_EnXWp^~IpUhLd[rH`^zRtQBl_@aG`Uc@jUzJhe@hTvI~C~S|ExiAdBl`@pEbTkOtHoGxT}OjL{KjBAjUsQtFaBjGiHCbKdC~AjDhCrn@rp@rL|PxDjEpEZnGSjCkE~KoLbFaD~GuDp_@sK~Od@|^b`@pK|TnC~TgB~Vgg@lz@aBp', '#F9B00A ', '2019-05-15 05:06:36'),
(4, 'Chimaltenango', '2', 'c}uxA|b{jP{o@fF}MpIwN~DcTrU_U~K{H~@u[}BuJkA}I}E}J{M{MoNuCsFwLgGsQVaHdBkI~GiKvTa_@h^eIhDuLQmW}Eio@eGiXeKyeAaRmD}Bc^wF}[kKubAcSkEaKcEirA}Iql@qOsa@ga@gjAoE_LaPaZU{G}AeCcGiOuK{F_NnAaPbI}LhIg@zLhKvv@DrGcEtL}EtI}FbDuSlHuN~DyUjIiSbAahAmNwC_D}LyCkSkKcr@mf@wLyJma@sd@mYvFki@bB{Te@u[|AyZvM}Os@mQuEm`@kZyPuNsKiFy[qPej@kM_BkKaAgE_@kB[iB_@{BMuCPeDJ_D_AmCqAyDQ_B@_Cp@yDXuBEeBcAqCoCqAgE_@iC}@q@kCy@iBeB}AcDgAkC}@ReCEmGAiCl@}C`AcB~AqCt@qAfAiCFmDq@aDQeDzGeAjBElBuDEyBo@{DgEwMWuD\\{Z?gK[yGYqCKuDTsDd@oBzA}BtGy@zBu@f@iEZ', '#F9B00A ', '2019-05-15 05:06:35'),
(5, 'Escuintla', '3', 'iyotAh_mhPdb@eEnToEbUUlg@gHxC\\nNyAlpHwo@~r@}Gdf@aE~XeExm@sD{Bvd@aAdWiA`k@Af]@f`@Jfb@Vrb@^tVr@rl@`@rXr@vg@fAheAhBndAf@zRb@hPNjFnA|YpAz]rC|f@~A~b@bA~VdFbl@hAzH`@|ArB`CjA`AnAx@|A`C}BfCu@xA{Ax@qD[yDx@uExA{K|C}M~D}Az@o@vAX|CxAj@nCAbEMdBJ|BfBb@~APbCLvB@lFBzHDtBBrC`@~BlAjAvDT~Ci@fAgCVuBH_DL_c@^_ChDyBhJqEtBaAjA_An@_BZcBTyENuCL{Bp@yBtBi@vC[vBd@r@dF?tEAdJO~Di@zBaAlAkErCwC|@iBv@iBx@{AvBCdDAdFqB`y@OdGf@h`@b@p]nFbwAj@`h@ZdYxAhjBT~EtGrtAlC`m@zDpt@xIhaAfAtZp@dXDxB?zCE|^q@dTyBto@gD|z@i@xc@qA|n@qAxk@u@|u@C|u@b@n', '#F9B00A ', '2019-05-15 05:06:36'),
(6, 'Santa Rosa', '4', 'exdvAltkgPuh@hOwUdPy\\fZgNMoDaCy\\ai@sFiIiP}IsHwHkDqIkTqQcIaGmEgBaSdCcEnGgHtIuGlCmLW}EwCkFkJwFkCe@uBaEgBuMiBcJaFeYoG{h@yQ_W{GoJgFoCeLyK_oCqBiLo@{d@{BmQyv@sGcYtA}S`Hc`@vWwQCiNkEcSrAkIpDsQk@sDmZaB}ByA{a@kCiZ}AeCyEcj@cL?oAzAyJOyEe@wCqCqm@gHo@uCvCod@oNaKm\\uGkEaDoGS{CbEaDhE}HCoKwJyLiTqWxDci@_EaXeOoIuAkKyFmUeDwBiBy[gD{BkB}TmBwXgFo_@aFcd@qBym@qJcEcCmCaCj@}BjdA}n@tEw@jIgN|C}KiBwVaDiIaDq@uIkKcH}C{KkMkAuBcJiXuAuXhEa]z@eHjKu^lLaTdB{H{@mc@cBwH_FqF{lAymAqCwVnB}FnFiEPgBvHaFt@_CnHkAfHaIo_@e_@eB}@qC{C{JeJuKsImB?a', '#F9B00A ', '2019-05-15 05:06:36'),
(7, 'Sololá', '2', '_ahxAhcjlPoZlOys@dKkFdFOdDtDxJx]lZbCdFbStMx[ra@bKtZ_CtXyFpE{ClC_KJe@|JiD|K{E|Bo]_@kHfIcEvOv@vEnPbVfMbFrLxKnBlS{IfN@dKbNhQmB~TfTfYf@|LgKbSdAh\\aEvOoYnQ}JrMIrGpC~MuCxTdBxJ`HlIbD~LlA|f@pDbKdJhInCxd@|H~LbFpCxOnAvSkC|WjTlYdZz\\t\\dU`LxNxE~JhG~Dj@tFGhBgA`AsAhEc@rDd@xDz@lC|CrAvHj@|KqAdc@bAfa@kKjjAMnj@mAdEhDbS|HdHl^jIClNjD~JsEjKuEbEcCfD_MDuBzIcD`VUbEaCo@yLqEuCoA_Bq@}QaNcImF_Cq@_Cg@_CmA}`@_[oK_EcReKkSqHeF{BqHiDiTaKo`@sRci@mJeNiFidBhJ_h@nLsvAhOu}@|Doi@uAod@^qEn@kEvDqQqHcPsFm`@mGcBgBkFyAuIcJcI{PsAwBwHkWmKiUcO', '#F9B00A ', '2019-05-15 05:06:36'),
(8, 'Totonicapán', '2', '}}~{AxnilP?dExAdD~BnBxBjA`Bh@bFhA`EHrBSzFmAjDg@`CpAfBfCzCdC|Af@lB`A`BjA`C|AfC\\tB@`BE~AOhDw@xCgArDm@nL?xCHzBT~BnBbCnDd@xDc@vC}AdCiAvBBjC~B`BzBAjDqB`CcB~Au@dC{ClBaAdCLtF_A`BuB`@eB`@sDJcEb@iBnB{AlCa@nD^pCbB~@rApAvBrClAbBSrCW|DBhCdClB`BfDf@`EIr@}T}@_Je@mHf@}DHcD]_Cy@iBcAmD@mCnAyAdCi@fIBtBlAx@vAv@~B`BrAnGKhEi@`JeFbCoGtAiGdEeEhFmBpG}MnD}KvBeB|E{@|D|@lCjBbEL`Fq@tReMAeBhVcAbEgAbCaCb@oCgCkDy@{CC{Cl@wBtBeAzBQpJv@vWiPbFuAjDoAx@oCu@yDSqBFoBhBeCvBkAdEgHr@_IbB}G|FyFzE{GnAcEeCgGoBsGn@qCnB_B~DsDC}CgBuDkCyDqCmAu', '#F9B00A ', '2019-05-15 05:06:36'),
(9, 'Quetzaltenango', '2', '{xayAn`cmP~ExC`NpAtkArDhNBdLpBhBhBrLhI|@pCzB|d@zEpRRrGzF|O|SlSdLtG|ZrPbOrNlKhUvHjWrAvBbIzPtIbJjFxAbBfBl`@lGbPrFpQpHnBnQrY`XbIbMp@zCzDpHfDlH`D|F|MdR|V`YlH`HtM`KdHjHz@j\\zG`d@g@le@pDlJhGlLbf@|d@bLzMdMlMxKvJpE~DlMjKvKdHrJzPrA|AzCrA`HfCnGtCvDbCfC~BvAfCnAnCz@~BdBpBpBpAjC`B`DnCbCfC`AjCrA`Gd@fFDdIMjIEbEBbBhAfFvB~B~DZ~B`A^xBSpBk@fB}AxDeC`FcAtDYdBSpDBfENpBh@|FdAtGpBzEfChDtBdBxAj@tBFdGVlBf@jBvAdBtBpFt@~B@|CiAnDmCpAmAlCKfG`AhDvArSnL~K`LlFxF`AxB\\pB^dFRjD\\~AxApBxBpBpApA|@dB`BfEb@nDJrCJpBXfFwAnLeAfDaAnAiDvBgCJ', '#F9B00A ', '2019-05-15 05:06:36'),
(10, 'Suchitepéquez', '3', '{xfxAt_amPwSjCyOoAcFqC}H_MoCyd@eJiIqDcKmA}f@cD_MaHmIeByJtCyTqC_NHsG|JsMnYoQ`EwOeAi\\fKcSg@}LgTgYlB_UcNiQAeKzIgNoBmSsLyKgMcFoPcVw@wEbEwOjHgIn]^zE}BhD}Kd@}J~JKzCmCxFqE~BuXcKuZy[sa@cSuMcCeFy]mZuDyJNeDjFeFxs@eKnZmOnQsArMxKn\\l\\jBtJE~_@xAtHvBfBzJPvNiQ|OiVnn@qdAh[im@jZwiA~IyGld@oAd[dEzVj@dl@pOvQd@hHuEzDaAzHqK~EeVtIsP`GsWbKsJrByBvPiDdbAo_@nTiQzU}LnBeBxTgChKhBfG|DpDxGrHtYzClEtO^zLwK~S_a@{CgYcHeIqM{CuPpFaUs@uSuLcq@yr@es@gkA{Oql@_Fg]eSyYoIgFocByoAmJyKwDsJ^gWzDmV~KkS`QwShKgLrnAwkBhc@yr@zEaP`AgWbBcGjMiRpDeKf@', '#F9B00A ', '2019-05-15 05:06:36'),
(11, 'Retalhuleu', '3', '{snwAdmhoPmBUoDPoC~@wGpC_CpAiChAeK^qCc@eBiAy@}A}@cBgAyAyAcBgCg@mBDwBp@wA~@gApA{BzAkBLyBKeC{@}BoAaEqD}AsAyAsA}BeBwC_AaB[cBKgG[aHYm[y@uIW{AeCXgB~@aCbAkC[gEiCqCoCqCcBeBiBwAwCg@aDkAeDuBaDsCoByAwAaAeBo@uBk@yE_AeCa@cCMeEUuEYuN[gBIeBG_BKkBo@cDmDeCoC_C_CgAoA{Am@qBWoD?yDRqJ`@qD@_HI}BUeCIyBOcBWiCq@aEiAeE}@yCe@qDEeDp@yAn@cBx@mC|B{D`EkBfByAtAeDvAsBJwBHsBl@aBrAoBtAyAh@eCRyDHqGAaEk@oDuByAcAaB{@wD}@_Me@qJOyH_@yDiAcDyAcBmAwDkDyGeKgCoCqB_@gBWyCwAyAkBpYgjB~Awe@mDiA{OoCePkBiCB_BPmBd@}G|@}Bi@qB_AaCmAwD}@gFc@mPQ}BNg', '#F9B00A ', '2019-05-15 05:06:36'),
(12, 'San Marcos', '2', 'sqs|Aly~nPhDmf@_d@sHg@wJrFwz@pGyBbOb@|OesA}@oMzCaMhFsHrf@{_@~OyHdHqHhBu@dPkJbhAi`Ahs@{g@dl@ofAbf@ml@hIkCvF_G`H{AdFkFnZiM~VuQdSeJ`n@}d@hq@ci@pr@sd@bUwLzIcJ`DElDwEr[aMbH}FbBPlJeIfBmMkEywEdA}MzJqKdOw^`Zmf@zAgHlIwIzGEl`AnYhm@nKhh@~LlMlFhl@jJ~ZjJna@pFlMlFxh@pIxDhE~f@jdAl`AlbCvUpd@zG`M?rUnBlRzCdoDrBbM\\vXrAjHbL~NnBdH[nQhDtGfERjGdElBvAfFzDTtD~@dEgAfO~OxCxOtL|Fy@tCiFxQ|@hSfPxHpLjLtDnWxAnDhCeAbXtK`KjQ~CzPfLvTm@nWxAnA}CnI}GnIiCvPb@`b@wc@lG}Cf]n@jJqElCoNpH}H~FsOnVmDnNqIzGwRF{LzG}K|Hi@tGj@|RoNbMqCxE{FbFcSjGo', '#EAF90A ', '2019-05-15 05:06:36'),
(13, 'Huehuetenango', '2', '_hj|AhskpPxB~BfNdOzp@fk@laCjyBSxE~@nCgTrgBiPveBqGx\\}`@doDq{@fEqbBgBsmAxBmcDUsbAu@gu@zCodEg@uX~BqDrEaDrS?~L{Mbv@yI`a@gJjXwQrUeOvKiMpGqn@nQyRlOwDtH_X_MceE{aCiv@wd@sqAis@yoYkjNihC}oAiRoJybGytCg`Aye@{zCkyAeaCulAkxKgmF}~BuoA{i@{VqQkIa}@ca@gfl@etYUalo@aAqb]g@ihj@nLTh_@~YxVArMuChGmG~DmArVcLnLk@dNpSbB|D|KjGf\\ja@~Dh@bIe@vMaGlKlGfDpEzEvk@rTz`@`NnAjM}KlA}CnFq[dCiDvEP|OhJbSlErEQbDzAfr@a@d_@lMrEiBrA{Il@eDb@gBrBwCnDuDtKmQ`BoDn@cE@cHaAcm@~@{EtB_CrCyCpB}AhDeClPyCt]mLhTeMpI{G~A}C~@yDZcKx@kJxA}BxG|B`LbOrBp@bDRfCB', '#EAF90A ', '2019-05-15 05:06:36'),
(14, 'Quiché', '2', '}}~{AxnilP{[gIuB]eCJqB~@iF|FiDxAaDbBmCvDkCtFwE`K{AjCqAbBqBlAeTzJkTdP}JCyLgFsC[_DbA{AzAiAvA{@`BkAxB{@vB_AhBgCjAiC{@IiCC}C@kCQ_Fo@}AuA_C{@yAk@sB|@}Dz@wA~@qEsA_AeCXeDBqBmA_@aEe@_FyAmDeCaC{Ag@qDkAsB_B_BcDR{DfB{C|Bi@hDs@nGyAxUcRxDeLwCuZaKwOwCmKkAaAsBU_Fd@}Bp@oLY}GaGeGcLcHaJ_@iGdBwFxB}C`DeBrL@fDuB`B{Ci@_HqCkGtEgHnBeBjB{Bb@wQh@aDlAgCdAmArBg@fF|AnDQ|AcBt@uA?iBc@yQiGi^`Csl@{IqQgA{YyAeE}TeTuD_MkF{EqGoHaQ_SEg\\qLwCoFgH}Cyf@tEug@^yXs@oT\\aD`B{BvBuArJoCxFkJR{GwDmNkGqOyOc[}CkU|BiTeUeHal@oLmy@qJoqAcB{S{B{IuByImD', '#EAF90A ', '2019-05-15 05:06:36'),
(15, 'Baja Verapaz', '5', 'kl{yA|ljgPBdEh@dBzAdAnBbAzApA|@zAl@vAx@xDx@vEZrCb@hBv@hBx@hB`BbCzC|DpCnDnCrEf@jBn@fEjAbJdAtFh@tDRlFVbG`@tCFjDE|BS~D]fIM`EJpC^lBhAzCjAhBhCrChCjAjEjBn@tBEdBg@hC{@rBaAxAeAjBwBvD}AvEy@lD]bCIjCAhCR|D`BpCzA|@fDbBhCbCz@fF\\jC^vB`@`CpAtEx@vAjAlB~BvC~@pAtAnA|AnA~NlMxCtDl@nCYdBaA~BDvB~@|BlA~B|A~CvA|BbAzDAnCOtCJhCLnB^zBdA~B~FxGrDbFR~BS~BcAhAkB\\aEIwCAqEdAy@rBAzCxAtElApApGdHhAxAzAdC`CtDvAfD|AtH\\zETxHBhDv@tDfBvAbB|ArAtCDjCGxBq@zBoAhBeHbJoGdKsGxIoArBk@lCx@~BtAfBpBjAfCHlBGpD^jArAVdDCdDQtC_ArHmA~CyAtBeB`BiChCiChC', '#F9440A ', '2019-05-15 05:06:35'),
(16, 'Alta Verapaz', '5', 'gjk|A~~xcP~q@rQxfAj`AhVfVdA|CpSrc@tPxe@}HtIs@h^hBtQ{Afe@~@va@dB~_@fHzl@pAfl@vI`fAoIdaBTla@pD|]dGhYdJb~@rIxUtDdZnKxe@xEhp@gA|xAqInr@E|YiGv_AR~jAkBx`@LlpAjAlHpFf{CO~cCN`_AoEhnA_Fl{B{ThiBSbn@rDdd@rCrQ~Mrf@xDfKtB`IzEdPlA`RaBnHr@tQ{Fl`@aB`f@nC~`Ay@lZzArO~@jBhApA|AxAnBnAlLxEvVpC`LlFfDdF|ClP|BlXpMlq@`PdOf_@nJdw@hD|HxSeLrWuJvPsHtP_DnGuJhPwP|U_RpUkF`HmMlMcNvOkTjTs^~`@oRni@iE~Fm@nDsAbG_Vbr@eOb\\i]`kAod@|E}_@`[}@bCe@zBuC|e@\\|OhMvUpA|Ho@fGaFtHkMdKsCfFgEpXzLhs@n@fNdBjRF~^gBrVRdLs@lQeAn[wBnKaChRfAnVvCzLbO`U~[d', '#F9440A ', '2019-05-15 05:06:35'),
(17, 'Petén', '5', '{gueBfhf_Pzm@pAjbBfGlBaBhoAtHh_@Mbz@pExjEjI~lCxIxg@IrdBfHvVOdn@`EtVrAzOeAh[hChhA|BvRbAjkAvCrTlCruAlCjQnBjSYvv@|DppAv@rQxA`yAxC`HvA|Oq@hg@vDlJcA`~B~IdZMh|BrInjA~AzSd@~L`@tzA|A`wAtFr}@f@xYfCjaDzIrWfBldBzBd{DvMn_A?d~@rE|oA~A`KGlM~Ahs@pDvhBdDphDxJfpDnJts@b@lhBnFrA~@`tApCdF|BnXi@hqC|If]r@tnCxIjuA`BvuChJtQYnj@~Cfa@VzXlAfSvAdBw@xgHvTfdKpRjI@|q@^ppBnHp]Ef{@fEzOo@zjFrOnXUtvBjFkDtCoArBEdCr@vDDdBWnCcAhAgBt@qBRiDYoDm@sGk@aCPaC~@mDlCgCz@yErAoC|AcCvBaCfC_BtD{@jCc@jBqBtB_BdAsBpByAzB_AzCEzBL|CCnCgA`CaDzFiWdf@Qd', '#19B240 ', '2019-05-15 05:06:36'),
(18, 'Izabal', '5', 'err}Anab{OrSp]dTdd@lIzNl^d[p@tCbh@ti@vU~VfBALhBrP`OpEnHxMxIz[h`@zJ~Gxd@|i@fj@ji@bCdBrZhd@`BtS}@|F`B|Bb@|JlMzKdDjCfIp@hDoBnLkAvAtCp@bEnAnEzAbDpGzE`UnHlLpFlEzF`J|[~J`UdWzS`HvLuGjMiC`UtC`UrMfVvLfKvJr_@t`@pe@nHzLpHlCvA|CEpBzEjF~FxCzI~LzNnMnC`@V|ClI~E`k@pl@dLfHfGpFhU`XtIjECpBzWxUb@vBpRpMh@`DpJfJrMtM|C`@vJxLtC~CdDjGfN|I`RhSpIxL`TnPth@xm@zN`LpKzL|DhKvCxBbGnKCnBdjAf{Bl^xu@lUr_@jNr^zI~KrLzYhNjThPf_@v@bBpMhWbCbBOjBbRxZ|E|MfDhCbNd^rFrIrXbh@pb@~x@fHrQ|ArDfDxEb@fEhO|W`M~RnG`QjCz@rEvN|HhLbDtKvMbRVbDfAlFxKxM@|', '#0B94D8 ', '2019-05-15 05:06:36'),
(19, 'Zacapa', '5', 'g`qzArvi_PnGJfGcFfBeBtB`BlBEhBm@rAoCl@oBhDiIrHcFtVl@`GoBnJu`@xAcPdFiI~R{GlCoGl@aKrGgK~Ek[jAuAtBcAhAuAlGWvET|AbBdPdL~ShU|CFpBvBfS`BzGsGrQYjOxCfGpDnVeAnYhDjHjFjWvEvLvKxGd\\nDrEz[rElLuNpSsCvEJ~EdCjAnAlh@ng@eRdNy[|MgTxRgEnA_GzFmXnNcPtTm`@na@mDvKCjh@gGreAXdRnEzHtObInE|@jLvIbG|@r_@dZbTbKtLlJlI|BtLbLxVdMxHrHtS`HnK`G\\lBp{@|d@tNhKjVnZb\\`rApDvT|Ab^oKf_@uUpd@w[~x@kRdp@_Tfa@eEde@lAlUtHhTxBdOpBvBrCd\\zKja@`FvHlJpj@v@pD|Ij]vCvP~GpOnCrVnBvBtF`]|DtJzEjd@wEba@gFzMyAxQiEnPCdKkFh]qFpOkFrb@eDlFOrNuDfKuHbr@gBxBiBjf@|T', '#0BCFD8 ', '2019-05-15 05:06:36'),
(20, 'Chiquimula', '4', 'mbfwA~zj`P`GJtCq@r@}AfBaA|CHnEUjB_BzByArGuCrB`@vAlCxArBxBr@vC\\tDCfDDbCZrGbC~BQpA_A~@kC^_CbAoC~@mAlCiApCu@rC_AnCoAfA_CbCQrJvAbE~DhJbB~Ol@vYuA~l@`\\F|EaG`NcCfSi\\nm@aE~TgF|CuHvCwUzU{B`FNjIb\\tJxQrArBXvA|@vAzBSbBoEtCmsA|F{`@nG{KjFcD|EQ`PbC|AtO`QUrZpJlDzBr@pE|@jB|@lCjAbChAnBf@fC\\dDf@`C^pBh@jCl@dEtArXhGjBf@rBp@vA`Av@dBDjCiAdDiAlBSbCRbCrAlBfBnB`B~@jM`AtGv@zBbAhAbA~AbCdBpBvBz@xBpBn@nC|@dEjBpBpGpCtBtBXzBP`Dd@pCdAjBn@lDZ`DR~Bl@`BnBnChB~@`BHdB@zCdBtEzIpAxAnAzAr@nBV`D?`BL`Dz@|CpBvBtChAnBbCt@xDT`EApB?vBQhD_@jB', '#05EC09 ', '2019-05-15 05:06:35'),
(21, 'Jalapa', '4', 'q~owAdficPqFlFuCxM~ExW|BlBjTzB`MsCbI?xG_HhKgQzLmPzZsLzDvAzUxVjB`N{B`H^`YhNjd@jRzQpU`FpLzId\\nJpNxDzXrGlK|PfBfN{A`c@}HvLmAnLjb@lf@xO`YdFvBhND~BvA`w@`Bh{@nIhCu@~MhBw@fGsvAdvB}OpZu\\vb@sY~g@aQbWoB`LWfKWzLpBfUpC~GtJl|@|AvEzFp~@tA~Dj@f^jBbOt@|KhEhShAlFnFpG|HHhQoBfT|JxJbOrFvEvF`QbBzBrDh_@`@vUxBzb@nI`g@yApa@bA~J`H~T~LbOfK~LjI|Wpc@eGfGnFpGfnAvBdHbC~]lAbj@yM`H{Xjb@}Uxa@y@fGwL~Ts}A|fCkC~Iyd@hv@kGtGyLrWkWt^?lBiOhP{CB}C`CgRlDqk@xE{`A`KqKdMvCnr@wLfi@cBvy@|@jj@xDhRhK`MxJpUrAf\\Orh@kBfNcEdGiK~CyB~CgGlDAvLtExL|Iff', '#05EC09 ', '2019-05-15 05:06:36'),
(22, 'Jutiapa', '4', 'wxduA|jrbPxRlHrBnCpBnAda@dV`PZvZxJd{A|WzBjBvOhArNlD~R|LnVlAfFdFfDfJfNZbEcArCSdCFnCrAlArA|BpAjDTxDh@lB^pAx@|AhAhC`A~AThDf@jEjB|BfA|An@lBn@bCr@nCj@zBr@vAr@~BhAdB|@|Br@hCp@lDVpC\\|Bl@dDRzBAfCc@nBaAbByBbBwDzAiC~DkArB\\vFDhBDfB\\bCvArAp@fBd@jEr@xCr@`CHnCO`Bm@dCkC~BcBtAm@xBYxDZdEBxAk@nA}@tAy@bDq@tBeAp@eDJiBT_BfByCpKmLhC{CpAkAzDgAhDI`G\\bCXrBv@lBzBL`DYrCu@dBcAdBoA`BaC~BwB`BeA|B?`CEdDI~Cs@tEa@pBk@bDGfBBrBJnCZ|AhAxEz@~BhAdDj@pCv@bClAz@bEx@~Bv@\\bCu@zC{@pAwAvCh@vD`B`CRhCc@tBaD`AwC|@eAbBUpCFxCAvEF|DlAbCa@dDq@tC', '#05EC09 ', '2019-05-15 05:06:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinatario`
--

CREATE TABLE `destinatario` (
  `IDDESTINATARIO` int(11) NOT NULL,
  `NOMBRE` varchar(45) DEFAULT NULL,
  `DPI` varchar(45) DEFAULT NULL,
  `TELEFONO` varchar(45) DEFAULT NULL,
  `CORREO` varchar(45) DEFAULT NULL,
  `FKESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinatario_direccion`
--

CREATE TABLE `destinatario_direccion` (
  `IDDESTINATARIO_DIRECCION` int(11) NOT NULL,
  `DIRECCION` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FKDESTINATARIO` int(11) NOT NULL,
  `FKMUNICIPIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `IDEMPRESA` int(11) NOT NULL,
  `NIT` varchar(15) DEFAULT NULL,
  `NOMBRE_RAZON` varchar(100) DEFAULT NULL,
  `REPRESENTANTE` varchar(75) DEFAULT NULL,
  `DIRECCION` varchar(75) DEFAULT NULL,
  `TELEFONO1` varchar(15) DEFAULT NULL,
  `TELEFONO2` varchar(15) DEFAULT NULL,
  `FECHA_CREACION` timestamp NULL DEFAULT current_timestamp(),
  `FKTIPO_EMPRESA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
  `IDENVIO` int(11) NOT NULL,
  `ORIGEN` varchar(150) DEFAULT NULL,
  `DESTINO` varchar(150) DEFAULT NULL,
  `FECHA_HORA` timestamp NULL DEFAULT current_timestamp(),
  `FKESTADO` int(11) NOT NULL,
  `FKPERSONA_DESTINO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `IDESTADO` int(11) NOT NULL,
  `NOMBRE` varchar(75) DEFAULT NULL,
  `DESCRIPCION` varchar(150) DEFAULT NULL,
  `IDPADRE` int(11) DEFAULT NULL,
  `FECHA_CREACION` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`IDESTADO`, `NOMBRE`, `DESCRIPCION`, `IDPADRE`, `FECHA_CREACION`) VALUES
(1, 'GENERAL_USUARIO', 'estados genrales para los usuarios ', 0, '2021-08-26 19:27:54'),
(2, 'Activo', 'estado activo para el usuario', 1, '2021-08-26 19:28:36'),
(3, 'Inactivo', 'estado inactivo para el usuario', 1, '2021-08-26 19:29:11'),
(4, 'Eliminado', 'estado eliminado para el usuario', 1, '2021-08-26 19:29:11'),
(5, 'GENERAL_ENVIO', 'estados para los envios', 0, '2021-08-26 19:30:46'),
(6, 'Generado', 'estado generado  para el envio', 5, '2021-08-26 19:31:51'),
(7, 'Asignado', 'estado asignado para el envio, asignacion cartero', 5, '2021-08-26 19:31:51'),
(8, 'En ruta', 'estado en ruta para el envio', 5, '2021-08-26 19:32:09'),
(9, 'Entregado', 'estado entregado para el envio', 5, '2021-08-26 19:32:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `general_member_login_data`
--

CREATE TABLE `general_member_login_data` (
  `LOGIN_DATA_ID` int(11) NOT NULL,
  `USER_ID` varchar(45) DEFAULT NULL,
  `LOGIN_TIMESTAMP` timestamp NULL DEFAULT NULL,
  `LAST_ACTIVITY_TIMESTAMP` timestamp NULL DEFAULT NULL,
  `REMOTE_IP` varchar(45) DEFAULT NULL,
  `STATUS_ID` varchar(45) DEFAULT NULL,
  `GENERAL_MEMBER_LOGIN_DATAcol` int(1) DEFAULT NULL,
  `LOGIN_STRING` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `IDMUNICIPIO` int(11) NOT NULL,
  `NOMBRE` int(11) NOT NULL,
  `POLIGONO` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FKDEPARTAMENTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`IDMUNICIPIO`, `NOMBRE`, `POLIGONO`, `FECHA_CREACION`, `FKDEPARTAMENTO`) VALUES
(101, 0, '_iexA~nufPdAn\\lB|CSrG`EnPbUpf@LlTvGvMtLx{@sEh', '2019-05-15 15:09:46', 1),
(102, 0, 'k_wwAt~|fPtM~LvGvKxG`YfDvd@vHjMndAdD|U|E~JhMl', '2019-05-15 15:09:46', 1),
(103, 0, 'ofcxAxjwePpP`AzNnNvCdEvAdCbNhGfDhCfSpAhNuAdDd', '2019-05-15 15:09:46', 1),
(104, 0, 'qgkyA|_ifPZxCHxC|AjGhGlTx@|Bv@~CJ~BJbBHlBf@~B', '2019-05-15 15:09:46', 1),
(105, 0, 'in{xAl}ifPhHaC`P_PtVgIxLgGhKkNzQoUjOuXpBe^|@a', '2019-05-15 15:09:46', 1),
(106, 0, 'gfvxAhkagPjBr@bE|FxCnAhGf@bVnSVdBvCvBrKjC`IjH', '2019-05-15 15:09:46', 1),
(107, 0, '_umyAh_|fP`C_A|LyFfM}[jFsWfBoBv@_IxHaPpNub@pD', '2019-05-15 15:09:46', 1),
(108, 0, 'apvxAptogPpXObNrAtJ}A~[eL`KqJtJc]pOy@~MxEpI`J', '2019-05-15 15:09:46', 1),
(109, 0, 'u~vxAb_rgPrXff@~UdXd_@bSf_@v\\hGlFrRlXpL`WfEz`', '2019-05-15 15:09:46', 1),
(110, 0, 'icwyAzjxgP`iAyCdZt@vMvEf\\vIfIzErMx[`Ixj@xOfL|', '2019-05-15 15:09:46', 1),
(111, 0, 'mbgyAhxlgP|A|@bCxAfPzFpBvBbMzMdOhGrVaAvQaJzLw', '2019-05-15 15:09:46', 1),
(112, 0, 'yjwyAdfvfPpDpBzA`AxApA|C|CrAxAhB|B~@bBlAbDr@x', '2019-05-15 15:09:46', 1),
(113, 0, 'e{iwAtosfPbH|CtIjK`Dp@`DhIhBvV}C|KkIfNuEv@kdA', '2019-05-15 15:09:46', 1),
(114, 0, 'g|kwArj`hPxAjAfE|@rCAlCBxAa@jB{@xC_AbDk@jB}@v', '2019-05-15 15:09:46', 1),
(115, 0, 'o_~wAhy`hPpBaXrAmA`DeU`CsFzFsEvLc^y@yt@kB_PoK', '2019-05-15 15:09:46', 1),
(116, 0, 'itqwA|vegPjVbBxMnAbWbMjaAvL|b@vI~@xAzhA|BjSxG', '2019-05-15 15:09:46', 1),
(117, 0, 'eauwAjbrgPdB~AhZ^hRpHbPt@nG_ClS}@zTjAjOyFfLaA', '2019-05-15 15:09:46', 1),
(201, 0, 'ebzyAhxfdP`QwHbD?dBiChFiFhMaHvQHtDuArd@pAzI~E', '2019-05-15 14:15:51', 2),
(202, 0, 'us~yAzdydPJ~IXnJj@zBbAdClFrGfGxGlAzBdApBbAvFB', '2019-05-15 14:15:51', 2),
(203, 0, 'uek{AbpucPjb@{\\nvAeqAlUeP~k@gi@jFyBpDmGfFiCro', '2019-05-15 14:15:51', 2),
(204, 0, '}p}zApcicPxt@{~@hQeQpg@yo@rYcWrJwKbEaE`SaN|Wg', '2019-05-15 14:15:51', 2),
(205, 0, 'w{bzAtwecPnDvArBkBnP_NrJeEhNJvA`BbDUvC~CnCMp^', '2019-05-15 14:15:51', 2),
(206, 0, 'qrxyAhskeP|B@vpAt@ts@_BjVnFfTfArVuc@`CaUzFoSf', '2019-05-15 14:15:51', 2),
(207, 0, '_{iyAp}idPxYuB|IpIlHzM|P|KpJdA|O?dNcJxHiA`DRj', '2019-05-15 14:15:51', 2),
(208, 0, 'yfoxAforeP}_@nu@JjBwKhUqJ|LoG`SyBbBUhCeVtb@Wb', '2019-05-15 14:15:51', 2),
(301, 0, 'yf~wAbkohPfRdEh_@y@pI~BhWdPtUlP~GjCjM`D~LfDfN', '2019-05-15 16:44:09', 3),
(302, 0, 'qtbxAnethP~OJf\\zGtElC|Oj@`XhJnNpPvMb]rLzPjGdE', '2019-05-15 16:44:09', 3),
(303, 0, '{tbxAhvwhPjDnR`Zlb@vc@jEhJrDxM~Qb@~CbXvQxAbGv', '2019-05-15 16:44:09', 3),
(304, 0, '{ctxAbrxhPbEC`IoEvEKlNkHrEUxVaJ|HqEtJiAfk@[~i', '2019-05-15 16:44:09', 3),
(305, 0, 'm`qxAfplhPtDtAbm@l@lQcAzIxFvLbLbMjU|AjCpE~JjC', '2019-05-15 16:44:09', 3),
(306, 0, 'uzkxAxyehPfj@bCt[n@n_B~VV|GbF|HhPbLnGzChFvHyA', '2019-05-15 16:44:09', 3),
(307, 0, 'a_dxAxymhPlGsGdGaOzTiWjRqBbIrDtNdDtV`BnUaAzTn', '2019-05-15 16:44:09', 3),
(308, 0, 'o_~wAhy`hPfJvGxBlJtCbc@kK`f@ZlIdBlAlBpFxOv@fp', '2019-05-15 16:44:09', 3),
(309, 0, 'et}wAbrkhP|[bB`MgC`T}RrYaf@nLs^lLuNdOwKhLdAtF', '2019-05-15 16:44:09', 3),
(310, 0, 'upxwAr`ihPnAhD~BtGjA`CdD`B~T`AfP_EnXWp^~IpUhL', '2019-05-15 16:44:09', 3),
(311, 0, 'oprwAzfkhPtQBl_@aG`Uc@jUzJhe@hTvI~C~S|ExiAdBl', '2019-05-15 16:44:09', 3),
(312, 0, 'wgfwAf~zhPmSx]eCtKu_@vm@u]za@}IbKsYzTkQ|UyUt`', '2019-05-15 16:44:09', 3),
(313, 0, '}lywA~fkiPd|@uEfLsIzFcQb@gWiHqPfEgX]aYvBiU?aY', '2019-05-15 16:44:09', 3),
(314, 0, 'udmwAbqhiPzJs\\fAqLtRqq@tEyFxVuOf@uEkIc^_@a^xU', '2019-05-15 16:44:09', 3),
(315, 0, 'szwwAdo_iPpVrN~}@ZzMzK|AhE]`Ki]dh@q@nPwEdAmC|', '2019-05-15 16:44:09', 3),
(316, 0, '_{{wA`ufiPzIcFvBeLfQeZfILjLcHzNmSv`@y`AtSiXtC', '2019-05-15 16:44:09', 3),
(401, 0, 'mj~xAhx{hP`DzAhC`AhCjAtAx@nA`AlBtAjCrB|AlAnBx', '2019-05-15 13:57:12', 4),
(402, 0, 'gjjyAv|qiP{Tb`@nFlp@~DbQfXza@vMbXD|ErC|GpGrh@', '2019-05-15 13:57:12', 4),
(403, 0, 'se~yAdkphPFqBDgCToCj@gBx@kBzCeCtB_AzCeAxCgArC', '2019-05-15 13:57:12', 4),
(404, 0, 'gjjyAv|qiPriGju@fRa@nP_HvNaCfRmLnDe@xTqMfQuS|', '2019-05-15 13:57:12', 4),
(405, 0, 'yhgyAtp}iP|V~b@fElDXvCx_@lh@{C`Ji@bKxEtUsBz]t', '2019-05-15 13:57:12', 4),
(406, 0, 'ubazAb|`jPzZzBjHlFbDDhIzJ`j@dYnVlMvj@nC`HbB|U', '2019-05-15 13:57:12', 4),
(407, 0, 'gbsxA~bjjPxXbGlDfCjFjSdM|SvOMdWyL`Pg@rE~CzJ@j', '2019-05-15 13:57:12', 4),
(408, 0, 'w~}wAx_mjPrwAj@lQxA~DhG?rNpBxDdHby@|C~KhIby@v', '2019-05-15 13:57:12', 4),
(409, 0, 'mfoxAnc}iP|EcDd^{FdIyDxOkAxV{JdZcAxS`DlAmAlET', '2019-05-15 13:57:12', 4),
(410, 0, 'gpxxAdgajP`ZcR`PWjIySgA}Jf@gWwEq]FsU|F_MpMeK|', '2019-05-15 13:57:12', 4),
(411, 0, 'iu`xAttdjPxGmXzc@}`AzSyOr]_GrMqMbDcMfAyJuCyV}', '2019-05-15 13:57:12', 4),
(412, 0, 'qhnwAthtiPtg@l@hFxBrbAzFh~@|KjUl@pDbZbDvOpBlF', '2019-05-15 13:57:12', 4),
(413, 0, 'opfxArhhiPlV`Atz@pAzNhBpDtBpG@nUxFh[bT~Npt@tA', '2019-05-15 13:57:12', 4),
(414, 0, 'sagxAfgciPtERhSlS~[h@zS}Dnb@iBtn@jYzg@p@vNpIx', '2019-05-15 13:57:12', 4),
(415, 0, 'atyxAjygiPpEFpBFpBn@vClBpCr@fB\\jCr@~Bv@fBjAzC', '2019-05-15 13:57:12', 4),
(416, 0, 'c~yxApj}hPnCj@hCp@zCRjC]`B{@tCMtCw@jA_BnByAjB', '2019-05-15 13:57:12', 4),
(501, 0, 'wgfwAf~zhPnMaVva@kGrn@eBpaAsKt[eAh]zBzt@}FhUd', '2019-05-15 14:23:01', 5),
(502, 0, 'cztvAh~hjPvS|Hxa@pFt_A~AhRjHdDlOvFtIvNjIzOdEr', '2019-05-15 14:23:01', 5),
(503, 0, 'iu`vAbqyiP~BwCxGoIpRaKbKrCbSfBnFw@`EcEnaAmc@p', '2019-05-15 14:23:01', 5),
(504, 0, 'iu`vAbqyiP|EjEpb@xNnLrJrCnDhBdDxA|CnBpEpRpB`D', '2019-05-15 14:23:01', 5),
(505, 0, 'akjuAha|hPbQdNzJo@`SuHp_@WvW~GzJd@rK}@vFi@pCu', '2019-05-15 14:23:01', 5),
(506, 0, 'uzmvA`l`lPbd@rIn]pAzRlNrLd@fXoBtKpFf[~CdGgAvH', '2019-05-15 14:23:01', 5),
(507, 0, 'yeouAv{ijPdKyNnGmLzAaDrAqDz@_CtMo]lAcEfQyZzIc', '2019-05-15 14:23:01', 5),
(508, 0, '_e{uAvc|gPkIhLqXGuk@gIwJ~DqC~NeCfDAtG|CzE`JpC', '2019-05-15 14:23:01', 5),
(509, 0, 'ilbtAvo|hP``@yFfDmCrNaCzCyCbNiA`k@zAh[uOxf@eE', '2019-05-15 14:23:01', 5),
(510, 0, 'ix|sAf{ihP{Bvd@aAdWiA`k@Af]@f`@Jfb@Vrb@^tVr@r', '2019-05-15 14:23:01', 5),
(511, 0, '{s_wAzvfhPvF|Cf`@lFtMhLbOzJhJvJ`^dT|GrDfExA|N', '2019-05-15 14:23:01', 5),
(512, 0, 'cuwvA|d~gPbSqBvzBkD`O|BnTnI`Il@`DhCvKvFnWjEvY', '2019-05-15 14:23:01', 5),
(513, 0, '_bsuAhkokPvAeALqBuBqBQoCbDs@rCo@dC{@jCaCbB{Bt', '2019-05-15 14:23:01', 5),
(514, 0, 'eiftAb_ojPRoJhAgRpCw^p^hC~AO|D_{@bC{f@hAwSrAc', '2019-05-15 14:23:01', 5),
(601, 0, 'chfvAjyqeP|ErFxNbGnl@xKbb@gEtVuI~CcBdc@x@jHu@', '2019-05-15 17:01:20', 6),
(602, 0, '{~mvArokfPxEyFlM_t@`D{EdGad@lQwq@dGyL~FrGhDfO', '2019-05-15 17:01:20', 6),
(603, 0, '__jwAte}ePvDjKhOrMjAtB|G`OnDhUlGdHzc@fDxPsHjQ', '2019-05-15 17:01:20', 6),
(604, 0, 'enjwAjyrePxC@zTcRrE_AnUkJ|O_@hC`^oF~P{CxCoBbL', '2019-05-15 17:01:20', 6),
(605, 0, 'eqkwAhebePpKeMz`AaKpk@yEfRmD|CaCzCChOiP?mBjWu', '2019-05-15 17:01:20', 6),
(606, 0, 'wesuAd{zdPhVcIdOwIxI}Ijn@mn@nTmb@vBwO`GuMvH{D', '2019-05-15 17:01:20', 6),
(607, 0, 'qmwtAnbwePgB|T`@jIpIp]jDdo@lBvHlFdFzJTvTuB`a@', '2019-05-15 17:01:20', 6),
(608, 0, 'iwouAtekfPbAuAfCk@`Bp@|H~MjHnIzAt@fCGlBm@pBiA', '2019-05-15 17:01:20', 6),
(609, 0, '_dfuAx`{fPxCf@hHxHrc@nR~Az@pYhDziAdCxHnAoHlw@', '2019-05-15 17:01:20', 6),
(610, 0, 'wokuAvkqeP|@mCtA_B|QoD~QLb@|C|GnItDfBnLf@zXuG', '2019-05-15 17:01:20', 6),
(611, 0, 'moeuAdxxfPbZyAfIyDhLcBrEw@|MaEhf@_Gz@qAlMq@fe', '2019-05-15 17:01:20', 6),
(612, 0, 'shtvA`cjfPrw@|Jlq@pM~YjBpHxBby@zIb@zJgFp~@fCd', '2019-05-15 17:01:20', 6),
(613, 0, 'u{suAh}vfPfGcLhKaj@dEsd@vC{F`Bi@zNs@zDuD_Hqn@', '2019-05-15 17:01:20', 6),
(614, 0, 'wmhwAtezePpGOzFyCdE}DnJyAnXc@pAz@rLMhI_HhByEz', '2019-05-15 17:01:20', 6),
(701, 0, 'iyiyAf~fkPa@~QtAnLxa@~f@tg@~w@zU~Bld@aAjLpApI', '2019-05-15 17:14:14', 7),
(702, 0, 'q_ayA|qtkPdK|d@lXta@xTnT?nXvMpjBwC~KHbSsCCgEH', '2019-05-15 17:14:13', 7),
(703, 0, '}ssxAdtklPzWtJtM|BlKpFxu@lJzd@xHrBjBbSzAjJlFb', '2019-05-15 17:14:14', 7),
(704, 0, '}}gyAh_zkPvLzJ|OzHtf@bLja@rQbg@vKpc@lFr]rA|Bz', '2019-05-15 17:14:14', 7),
(705, 0, 'gpqyAjw_lPtTiCvb@iNrGeFhQcJ|n@um@vLyOdWsc@vDu', '2019-05-15 17:14:13', 7),
(706, 0, 'sacyA`khlPnHhF|Uz[f`@t]xs@x@f_@tMdKfJfPxJlKrN', '2019-05-15 17:14:14', 7),
(707, 0, 'sv}xA~`elPrFoB~cC@|c@sQ~F`J`C~K`FpG|SnShJdHvC', '2019-05-15 17:14:14', 7),
(708, 0, 'iyiyAf~fkPnX`@vQcO|LyKxK}Q`MuU~SiUbDaKjLyNzNc', '2019-05-15 17:14:13', 7),
(709, 0, 'sziyA`qzjPtbAbS|[jKb^vFlD|BxeA`RhXdKho@dGlW|E', '2019-05-15 17:14:13', 7),
(710, 0, '}z|xAvngkPnSfP``@f\\e@xB_ClDsAzB{@`Da@tBUhDQnF', '2019-05-15 17:14:13', 7),
(711, 0, 'k|uxAbgckPtHfFlJfMdNnIw@`Dg@fEy@rCgAdDeA`C}@z', '2019-05-15 17:14:14', 7),
(712, 0, 'uysxAbq{jPpx@jDnIzCrAxBlBAlMfJvV~YjN`I`DDdC`D', '2019-05-15 17:14:13', 7),
(713, 0, 'shhxAr`gkPtMsB`B_CzDac@lOu~@rFus@bgAdIjQ_A|`B', '2019-05-15 17:14:13', 7),
(714, 0, 'qb}xArkskPSzBBzBn@`CjAvCv@dCt@nEb@~BXrBJzCEbB', '2019-05-15 17:14:14', 7),
(715, 0, 'gfxxAvfalPfBjFrCbIrAdEt@~BAxC_@~Dw@nELvCx@lBp', '2019-05-15 17:14:13', 7),
(716, 0, 'ud_yAlv|kPfEIrCBdf@z@jVpH`Q~BjMsDxXcVdHiBvAgF', '2019-05-15 17:14:13', 7),
(717, 0, 'uqwxA`mclPvAfBpBzA`C|@pEd@~CNlBHjB^fBlDbBvDrA', '2019-05-15 17:14:13', 7),
(718, 0, 'aofxA~p~kPs@x_@lAdPpZdt@l\\nc@vd@fg@da@p[lg@jZ', '2019-05-15 17:14:13', 7),
(719, 0, 'kzlxA|ojkPlBjJe@xSzAlLhJ`KfK|B`KxFnKzLja@|R|W', '2019-05-15 17:14:14', 7),
(801, 0, '}oezAno{kPjAaYmAcC]eROguA|HwJt[}QpM{NtK}F|GwE', '2019-05-15 17:38:00', 8),
(802, 0, 'gfazAvm~lPdDMbE_EdJgZlAaI]iPfFqC|OMdYhM~W|Sxo', '2019-05-15 17:38:00', 8),
(803, 0, 'ihjzAbw_mPtFsHjUeNr]oa@hLiBfPeHhU{Q|EmEdGuDh_', '2019-05-15 17:38:00', 8),
(804, 0, 'wj{yAnrhmPtDrYvSze@zb@dd@Y~g@`CzJi@vMuOdOgX|N', '2019-05-15 17:38:00', 8),
(805, 0, '}}~{AxnilP?dExAdD~BnBxBjA`Bh@bFhA`EHrBSzFmAjD', '2019-05-15 17:38:00', 8),
(806, 0, 'ezh{A`l_lP`tAvBt}@lDzqBlBdyE`Mb|@pa@zRnKrEV~s', '2019-05-15 17:38:00', 8),
(807, 0, 'a`d{AvbvkPEpLuCfTcLbfA}n@|mByFbHkNdI_i@h@oXxI', '2019-05-15 17:38:00', 8),
(808, 0, 'stk{A~axlP|Gf@nF|@~DhBlC`B|BrCjHpOhNtm@lVf[`W', '2019-05-15 17:38:00', 8),
(901, 0, 'mlyyAdykmPpz@ie@pOqEvNqKxq@cVvO{JjX{Mdj@jGfNJ', '2019-05-15 16:13:40', 9),
(902, 0, 'uozyArfbmPfp@bAtYhDnn@~]rJnA|e@T`@fItElPxRlRt', '2019-05-15 16:13:40', 9),
(903, 0, 'eiyyA`nmmPlu@qAxV|YjArLXjW}FpS_J|O}AnZpJde@~E', '2019-05-15 16:16:58', 9),
(904, 0, 'mul{AripmPdHlFrb@jk@xF~C~GxLjpAvuApl@po@vC`Jd', '2019-05-15 16:13:40', 9),
(905, 0, 'ewtzAb~dnPjLyHrSuBr`BpGpKFdHYrCWfCs@hByA~B{B~', '2019-05-15 16:13:40', 9),
(906, 0, '}t_{Axv_nP`f@fa@dKzPlBvP{BxUcEhN?lIfD~Jh^bZdF', '2019-05-15 16:13:40', 9),
(907, 0, 'k`czAti|mPhWdF~^xBtQvBgCpJj@|NvF|QrEtHbKvT|B|', '2019-05-15 16:13:40', 9),
(908, 0, 'ku`zAlx|mPdFyD`G}CfGe@pEXzEz@~FtCfE|CnHrPzA~B', '2019-05-15 16:13:40', 9),
(909, 0, '_s_zA|penPxAdAjF~C~MpI|RrNtXfIfDpCnZxG~Oj@rKw', '2019-05-15 16:13:40', 9),
(910, 0, '{qsyAt||mPtF?p[mBd~@cQzOiAxl@cBbIx@nGfFjGbJdS', '2019-05-15 16:13:40', 9),
(911, 0, 'aduyApobnPbBmA~j@g_@~SgJ~SyPnEm@~PcKb]yCnCcBr', '2019-05-15 16:13:40', 9),
(912, 0, 'a`nyAn}`nP|EkPbC{AvJ{XdE}HvE_IdHiFjNgInd@wAbc', '2019-05-15 16:20:44', 9),
(913, 0, 'ejmyAbnfmPlTpUbd@zWzIhAvCdAzE`@|BvAlk@dG|JO~K', '2019-05-15 16:13:40', 9),
(914, 0, 'sdmyAlk{lPlPWze@dIn]rBbp@bJjHnE|qAnqApjBpdB|Z', '2019-05-15 16:13:40', 9),
(915, 0, 'ewtzAb~dnPA`GrLlT\\nErEtCbSfa@xFtIpKlIlK`MjBzI', '2019-05-15 16:13:40', 9),
(916, 0, 'ehgyAfcimPpQyFtDkGoIqNcB{BcA_KWcYp@wLnGsInMgJ', '2019-05-15 16:13:40', 9),
(917, 0, 'qzwxApeonPnDYpDl@~DtChBbB~EzHz@rCx@nDNnFo@xDu', '2019-05-15 16:13:40', 9),
(918, 0, '{`dzA`wrmPzPkE`|@sWr_@kLdM`EfHnLfJxQl_@bg@bBp', '2019-05-15 16:13:40', 9),
(919, 0, '}g}xAncwmP~NwCzHuDbFeCxEy@dFs@xUa@xEa@tEeBvDw', '2019-05-15 16:13:40', 9),
(920, 0, 'efzxAtc`pPRoCPkCFyBkAkCiBiB[eCzB{DdB_A`AuBFkC', '2019-05-15 16:13:40', 9),
(921, 0, 'a`ywAbfeoPpDApJa@xDSnD?pBVzAl@fAnA~B~BdCnCbDl', '2019-05-15 16:13:40', 9),
(922, 0, 'ixnxAf{joP`LxG~KpFvF|@xJjAdM~@dDj@rEbCzDnDbNb', '2019-05-15 16:13:40', 9),
(923, 0, '__yyAbxymPlS\\tYsDnXg@vO`FdS~TpGtHbS~WvVzXbJzO', '2019-05-15 16:13:40', 9),
(924, 0, 'kggzAliinPxd@bG`VnDbSdAdJZpJLbJDzCOtDq@pPyClM', '2019-05-15 16:13:40', 9),
(1001, 0, 'ki`xAbolmPbd@}CdNjA~M~GrErCrCnCl^vCfhAvAtJmAb', '2019-05-15 17:34:00', 10),
(1002, 0, 'qmzwAjatmPrE]bEuArBg@~CWpC@lBf@~Al@pBhAfBpAvE', '2019-05-15 17:34:00', 10),
(1003, 0, 'ytnxAbhkmPBdDtJpK|MxIrVbJtPlOjBzAjEp@~BL|DKnE', '2019-05-15 17:34:00', 10),
(1004, 0, '}puwAfqbmPlCkHrQ_NfFsBnSsMzKkId`@yElOoPvDrA~E', '2019-05-15 17:34:00', 10),
(1005, 0, 'iliwAp`bmPnAeYhHeIpX?hFbFvCHjO}CfHgIb\\kI|IqGL', '2019-05-15 17:34:00', 10),
(1006, 0, '_~owAffcmPbXmBbUuJnu@eJ|BcBvc@iHnD{Bzg@]zSzDh', '2019-05-15 17:34:00', 10),
(1007, 0, 'gtwtA~k{mPcCnEcNv[_FrM}KzR}N~VoNrYi\\xr@m\\nj@_', '2019-05-15 17:34:00', 10),
(1008, 0, 'khaxA|cemPnNpN~BxBlDfDdObJdd@dChG}@|KeJbIwa@x', '2019-05-15 17:34:00', 10),
(1009, 0, 'ws`xAhf{lPhNEnJvHtLl@vUgA~a@jEhUmBfJtRrHx`@lF', '2019-05-15 17:34:00', 10),
(1010, 0, 'qvtwAtmulPtOlOvF|AhWbQ~{@lD|`@gA|^bDb[}Ep\\pAt', '2019-05-15 17:34:00', 10),
(1011, 0, 'qygwA~`vlPtBxl@PtJgMbEo[vBaOtGoGd@oEc@{GkQcLq', '2019-05-15 17:34:00', 10),
(1012, 0, 'kjmwAl{nmP|EdPbCbF|FhPf@lExEf`AuH`EsD~AuCxDo@', '2019-05-15 17:34:00', 10),
(1013, 0, '_ahxAhcjlPnQsArMxKn\\l\\jBtJE~_@xAtHvBfBzJPvNiQ', '2019-05-15 17:34:00', 10),
(1014, 0, 'wpywApankPhc@yr@zEaP`AgWbBcGjMiRpDeKf@sN^gNw@', '2019-05-15 17:34:00', 10),
(1015, 0, 'k`|wAhnqkP|DfEdOvElJ`HhZjFr]iBfOwFrYoDfZmQf[q', '2019-05-15 17:34:00', 10),
(1016, 0, 'y{zvAd~{kPc`@eAeRkKsIeZyRuNuMaRuKi]gS}]o_@wa@', '2019-05-15 17:34:00', 10),
(1017, 0, 'uqhxA~wylPnc@lF`IfEdINtG`CvFz@pTsHtGM|HtCrHnH', '2019-05-15 17:34:00', 10),
(1018, 0, 'amaxApjomPq@lLS|KdCdC~ChFtBzMIbDu@hBaA~BcCt@{', '2019-05-15 17:34:00', 10),
(1019, 0, 'adgxAtgvmPwKbJcG~GqBzB}D`EeCpEaBpMQlGi@xJwB~F', '2019-05-15 17:34:00', 10),
(1020, 0, 'chsvAj{}kPhfAnAzGvFdIx]dC~AzRVvOzMxOvFzIpIpMt', '2019-05-15 17:34:00', 10),
(1021, 0, 'gkvvAr_vmPhCQfCn@zBpAz@CdAm@fAg@bBUlBf@d@XdCb', '2019-05-15 17:34:00', 10),
(1101, 0, 'u}qwA~glnPfBbCpAlAvAx@lCnAnMtC|Ct@hBv@jCbAvD\\', '2019-05-15 16:37:37', 11),
(1102, 0, 'u}qwA~glnPyRjC_Mb@wd@ZoJ`@aFjAcb@~McYrLcHtDqK', '2019-05-15 16:37:37', 11),
(1103, 0, 'coaxAvk_nP|AZ~HNnIA`RHtR^dQv@dNr@bEd@zDr@xGjA', '2019-05-15 16:37:37', 11),
(1104, 0, '_ggxAz`{mPvEjA~Fv@zEvArEnBrJfEzDrBfD~BvD~CfCt', '2019-05-15 16:37:37', 11),
(1105, 0, 'awhxA|cymPzRx^`K|MbOdMWrNnBrZjPpjAhH`YzQx]pHp', '2019-05-15 16:37:37', 11),
(1106, 0, 'adgxAtgvmPjPbErGbF`\\xMtKdJvH|FjHpC~KpBdMpApDr', '2019-05-15 16:37:37', 11),
(1107, 0, 'gcyuAdwnoPsF~FkAhB}A~DyAfDkDtHuBdDyFfHoFrFgIf', '2019-05-15 16:37:37', 11),
(1108, 0, 'uzbxAp`lnPrItLpB`DvArB~CR`HBdB?`CHrAr@xAjCXhB', '2019-05-15 16:37:37', 11),
(1109, 0, 'uamxArrwnPzBKjEt@z@lAnAfAvBlApD|AbGlEjG|FhBdA', '2019-05-15 16:37:37', 11),
(1201, 0, 'wm_{ApfkoP|Lx@nO}@`Gt@dBaA|JXzIkFrD}HvAyKpHaI', '2019-05-15 16:56:12', 12),
(1202, 0, '_pqzAz}unPdb@p@fBpAd@lKrdByDvZf@dJnAzEfDvEhEb', '2019-05-15 16:56:12', 12),
(1203, 0, 'mxozAr{onPr`@dBbU`DpXvCzx@bBrSvDb_@zB~]}CjLgE', '2019-05-15 16:56:12', 12),
(1204, 0, 'wrk{AffqnPfFzDTtD~@dEgAfO~OxCxOtL|Fy@tCiFxQ|@', '2019-05-15 16:56:12', 12),
(1205, 0, 'gcs|An{wnPzCaMhFsHrf@{_@~OyHdHqHhBu@dPkJbhAi`', '2019-05-15 16:56:12', 12),
(1206, 0, 'sqs|Aly~nPzG|BzT~PfSra@`HfMjIpB`Q{A|GqJdFkVlH', '2019-05-15 16:56:12', 12),
(1207, 0, 's`d|AbnqpPtHkFf^gVvL_DlRsAvl@hDnQbH|Yh@bKyBvY', '2019-05-15 16:56:12', 12),
(1208, 0, 'qaq{AhpnpPfSj@rKTpIbBxFhCrHpEnC|CtJzIxL~KxFvF', '2019-05-15 16:56:12', 12),
(1209, 0, 'cj}zAllvoPxY`GnClCha@fWpKfMnErDlL~Q?pBdL~NhPn', '2019-05-15 16:56:12', 12),
(1210, 0, 'omu{AbzgoP~EW|LiGzSuB|m@oMvOuHzQyBrOr@|K{@rQw', '2019-05-15 16:56:12', 12),
(1211, 0, 'ybezAjqwoPrLUbfAtFzJi@df@YhVpAfRvGxR~K~UxQbTx', '2019-05-15 16:56:12', 12),
(1212, 0, 'gc}yAvmhoP|b@dPrPfGzIvBx_@jNjElApNxFnC~@bClBh', '2019-05-15 16:56:12', 12),
(1213, 0, 'o`}yAb_zoPlBeCbEeC`DuA`B{@tCkBt@cCMcByAiBqBkB', '2019-05-15 16:56:12', 12),
(1214, 0, 'a}_zA`}fpPfCrIxCrCrK`Mxm@pf@dF|C|HvEtj@lH|RhJ', '2019-05-15 16:56:12', 12),
(1215, 0, 'e|mzAnywpP`L?jBaCrEg_@bEoGzOy@|iA~BhhA]`YoD|B', '2019-05-15 16:56:12', 12),
(1216, 0, '{rnyAl~xpPzxAtLxKuBhFkHpLsa@`IyJpDi@|DTvAfExD', '2019-05-15 16:56:12', 12),
(1217, 0, 'elfyAxh~pPp`As@lu@zHjB_AfA_CXwNpAiDjFm@rBd@vB', '2019-05-15 16:56:12', 12),
(1218, 0, 'ecnwAfftqPQZuDhFcBjB}HpNyJvKmBfGoDxLmCdFwBxCa', '2019-05-15 16:56:12', 12),
(1219, 0, 'kxjzAtn|oPzRnNpEzI|B`HhE~JfGpKlGvLnHtMpNl[hMn', '2019-05-15 16:56:12', 12),
(1220, 0, 'i~qyAfcboP~ExAzBPtGEdFDdDlAvDrDfDbCjD`BdD`AtF', '2019-05-15 16:56:12', 12),
(1221, 0, '_wvyAhyeoP~MtMhn@rs@dF|CtOlFl`@fFbSzBvBlBnYvG', '2019-05-15 16:56:12', 12),
(1222, 0, 'k`cyAd|ipPnDlQjDvLAxKdCzNpErAlJwE|C_F`NwZlIuY', '2019-05-15 16:56:12', 12),
(1223, 0, '{n~zAdyqoPlHjBlFzFpPnQ^jH~GnNrEfPqA|UnB|NkGzI', '2019-05-15 16:56:12', 12),
(1224, 0, 'aq{{Adg_pPnIUra@aS|CQhUgNnGuBz@kC|K{DrRgEbj@i', '2019-05-15 16:56:12', 12),
(1225, 0, '{_{yAnd|nPzAzEhDrA|E@zFPfHD~BR|G`AlBdA`F~CnIf', '2019-05-15 16:56:12', 12),
(1226, 0, 'wl|{Anm{mPzGEl`AnYhm@nKhh@~LlMlFhl@jJ~ZjJna@p', '2019-05-15 16:56:12', 12),
(1227, 0, '_u_zA`bkoPrIvPbKzLxRxO~A`Bx[tQdChCrNlK`NhIvMx', '2019-05-15 16:56:12', 12),
(1228, 0, 'yk{zAzjmnPlXSrGrCtX`CtGxBrwBfVzwBxU~h@`IhA|Cl', '2019-05-15 16:56:12', 12),
(1229, 0, '}{vzAzpvnPrL?|p@}SxSyQvNgIxVB`QjEhJtIrQxL{MnK', '2019-05-15 16:56:12', 12),
(1230, 0, 'avdxA`pjqPlC_HdEiKdBsE`BqCjG}NrCoG`BsDtAcDfDo', '2019-05-15 16:56:12', 12),
(1301, 0, '}ru|AhsulPva@ij@nK_\\j@uXwDch@t@kkAxG_u@vTif@|', '2019-05-15 15:27:47', 13),
(1302, 0, 'orm~AhsykPtAxDpAbB|C|A~B~AbHrF`D`DlAnAzB`AhBD', '2019-05-15 15:27:47', 13),
(1303, 0, 'qx{{Ab`tlPbBS|BWlCZf@zBMfBiDxI`@hBbApAtEJjBq@', '2019-05-15 15:27:47', 13),
(1304, 0, 'qvf}ArvuoP|JBfMoFvHg@vP~A~YcDhj@mAbPJlIbB`WfJ', '2019-05-15 15:27:47', 13),
(1305, 0, 'azz_BzeumPzC|Pn\\bu@|Khf@lM`aApKvyAtJfw@nCfs@f', '2019-05-15 15:27:47', 13),
(1306, 0, '}f}}Aj~{nPhf@wpDpScBl_@Fxh@zIxHPrj@lJxn@vQbkA', '2019-05-15 15:27:47', 13),
(1307, 0, 'k}n_B|wznPVwq@jDuS~KcWlc@wb@hu@qn@jd@uYzc@eRt', '2019-05-15 15:27:47', 13),
(1308, 0, 'slw~AjfmlPtNhLfWjn@dDnUbKzTjIzZfStbAaHfnAlAnC', '2019-05-15 15:27:47', 13),
(1309, 0, '_hv}AhihoPblAtL`PBbIkClI}I`E{OxJ{PdIqWdEkXEoO', '2019-05-15 15:27:47', 13),
(1310, 0, 'mw`}Az_fnPjN?pMvLbRtGbKzB~ZzAbb@aIf[gWhC{IbAs', '2019-05-15 15:27:47', 13),
(1311, 0, '}oq}Ad}roP~a@v@ne@zIxcBYhL~ChQd@~BvAfIAfFxBlR', '2019-05-15 15:27:47', 13),
(1312, 0, 'eyq~A|~loPtFo@lk@eKti@F`a@bCn_@~Cz]Kpa@cH~FgE', '2019-05-15 15:27:47', 13),
(1313, 0, '_x__B~wzmPlGUjKiHrYeKv\\oFv{ARpb@}GdIoDpZ_^vNs', '2019-05-15 15:27:47', 13),
(1314, 0, 'k~`_BrfgmPfMxMpPdUxKvSdH|MzJjUz@|BtRpe@zSj`@~', '2019-05-15 15:27:47', 13),
(1315, 0, 'knm~AbdumPfCce@xEuTlAeEzEaStL_vA|C}QvC{FxBmXf', '2019-05-15 15:27:47', 13),
(1316, 0, '{hr}Af||mPrH`Ih^jh@ph@~d@je@`Txb@|GdQf@x@rAfT', '2019-05-15 15:27:47', 13),
(1317, 0, 'i~k_BrqkkPxH}Lv@aBnLcXfSsVvQyPbr@ag@~o@zf@dYf', '2019-05-15 15:27:47', 13),
(1318, 0, 'est_B`kplP~DrS|R|_@|o@|fArSh[lm@raAvMbS`Q|XlX', '2019-05-15 15:27:47', 13),
(1319, 0, 'uqk}AndmnPp\\hCbb@zQriAnq@lL~Dri@h^xl@pWpp@xc@', '2019-05-15 15:27:47', 13),
(1320, 0, 'm`n}ArnpmPjRaHd[aE~q@dHdMrFjg@h@p_@kGdgAwZdI?', '2019-05-15 15:27:47', 13),
(1321, 0, '_hj|AhskpPxB~BfNdOzp@fk@laCjyBSxE~@nCgTrgBiPv', '2019-05-15 15:27:47', 13),
(1322, 0, 'q~s~AjatmPdxAhH~t@p@pCdBjJTjUdGlJ|@fNzHgBrO_O', '2019-05-15 15:27:47', 13),
(1323, 0, '}cr~AtevkPnELdCDjB~AiAlCyFvEg@lCbBzErCtFh@xB`', '2019-05-15 15:27:47', 13),
(1324, 0, 'uat~Aji|nPxDdJvDtk@tQfV|W~EbLi@nSwHfQuGdc@uXn', '2019-05-15 15:27:47', 13),
(1325, 0, 'oyq_BfbkmPlUjVvGxDfDrBjGfE`KdIjI|IhFzI|RrWvFb', '2019-05-15 15:27:47', 13),
(1326, 0, 'gim_Bbp~jP}o@|hAuJpSqd@~_Aw_@xo@w]vq@mG~NsYri', '2019-05-15 15:27:47', 13),
(1327, 0, 'k|{|An{mkPlLuGb[sMrh@kY|QmIfXiOdVwEdPrLhOpOxZ', '2019-05-15 15:27:47', 13),
(1328, 0, 'wh`}ApjknP|GdErh@pJ`w@|Wbd@tWdClDdHdBbn@jb@je', '2019-05-15 15:27:47', 13),
(1329, 0, '_}}|Av_unP`d@^zZuA~fBuTh\\aGpBeBbDRvWaJjPiCdHr', '2019-05-15 15:27:47', 13),
(1330, 0, '}py}AbiknP`P@vUnFfI@zPjEbLh@`QnFz^lXvPtHtv@dN', '2019-05-15 15:27:47', 13),
(1331, 0, '_hb_BtnaoPvMvEp_@nUz[|LrG`GbYbL|f@l\\|Fx@vQrK`', '2019-05-15 15:27:47', 13),
(1332, 0, '}zc~AposnPh@Xnp@f]buAtnArDpQpEpTvz@lqBbBnDOZM', '2019-05-15 15:27:47', 13),
(1333, 0, '{cm~A`k|nPfoAaoFl^pYldBeeAxrADFtACt@[h@i@n@q@', '2019-05-15 15:27:47', 13),
(1401, 0, '}gc{A|jzjPxd@LlL_B~y@}KbToBlc@mDd_@e@|AvSlBnN', '2019-05-15 16:32:21', 14),
(1402, 0, '{tzzA|egjPlS_ErMiAlh@yS`OmAnSfAbK`D|EjBtHlA`E', '2019-05-15 16:32:21', 14),
(1403, 0, 'gdd{A|_ljPh@qHf@{JhAe^lV}NhToFf]oUjHoDdTaEf^_', '2019-05-15 16:32:21', 14),
(1404, 0, 'qtn{AhufiPbWuLxZ{Pr^mRlReKtg@}Wp[sPhb@kWfVcK|', '2019-05-15 16:32:21', 14),
(1405, 0, 'oea_BznfjPxSsOjCoA~EaBzF}BfOiHvEaBxHoCnOoBdMj', '2019-05-15 16:32:21', 14),
(1406, 0, 'qhkzAjhnjPjIbJfMxRfD~F|YzTzL`IjGPbCbBx^fGpBvB', '2019-05-15 16:32:21', 14),
(1407, 0, 'ghozApgjkPdaASxRvC|OlI`_AxG~BvAt}AfBbUFzc@tMo', '2019-05-15 16:32:21', 14),
(1408, 0, 'a`d{AvbvkPrCmLtAaXbE{TlQej@bDqSt@o{@oCij@eBov', '2019-05-15 16:32:21', 14),
(1409, 0, 'wa{{AnghkPzW}OjFq@fq@}GjY}V~SuKfk@gG|JmEhLiPz', '2019-05-15 16:32:21', 14),
(1410, 0, '{lb}AfmviPbTo@p{CLvf@|Gx^|EbMhAdb@dAv_AlFbe@l', '2019-05-15 16:32:21', 14),
(1411, 0, '{lb}AfmviPWrKwDpa@xCxh@`G~Unh@~v@jI~XYtY{Jz`@', '2019-05-15 16:32:21', 14),
(1412, 0, '_yizAtajhPfCdD`C|CjExD~JpCjSrUfSvL|P~HlMzBjAn', '2019-05-15 16:32:21', 14),
(1413, 0, 'gim_Bbp~jPrE`GdTh`@xLrBtj@d@lHkZfAgBj_@_WxOiH', '2019-05-15 16:32:21', 14),
(1414, 0, 'gsr|AdmxiPrdBgItXjCnG`DrBjBdFzErIfLrFtAp`@p@v', '2019-05-15 16:32:21', 14),
(1415, 0, 'www~AtnciPjEdDlOzFtCfAhClA~D`BlCfAlCHhGFfIMnF', '2019-05-15 16:32:21', 14),
(1416, 0, '}_p|Ax_njPzcA|AxMyDlRf@l`AhCpNcHlCaMzBae@fDw[', '2019-05-15 16:32:21', 14),
(1417, 0, '}n|{AlmejPjE|E~Z@nZqJ`n@wQbWmBpXDbl@rEja@vGv^', '2019-05-15 16:32:21', 14),
(1418, 0, 'kk~{AfghiP|TwCjr@cBfb@{DtlAiD|LgClSZr_@kBbKuB', '2019-05-15 16:32:21', 14),
(1419, 0, 'm~c~AbgehP~AnGjC~GdD`HxB|DlAfB~EtA`CJnEDvL[lF', '2019-05-15 16:32:21', 14),
(1420, 0, 'eaq`BtllgPz@zBhAdE\\hCJhCG~DWvBoAjCuBMmBsBw@aB', '2019-05-15 16:32:21', 14),
(1421, 0, 'yoyyAxrbhPkBtC}@jBu@bB]bCXhE^bBhAdGd@vC`@dFi@', '2019-05-15 16:32:21', 14),
(1501, 0, 'ink{AfqhdPzGtMfAbCf|@bdCfZld@tI~Mlh@zz@vGhJzH', '2019-05-15 13:43:15', 15),
(1502, 0, 'iwc|Ap}rfPhE_GnRoi@r^_a@jTkTbNwOlMmMjFaH~QqUv', '2019-05-15 13:44:06', 15),
(1503, 0, 'sdd|AnijgPdUsExZ_Rln@k]na@wThi@aThK}CfQ}DnOk@', '2019-05-15 13:41:54', 15),
(1504, 0, 'gj{{AvctgP|DdEnTfY~DrBbIlF~PrE~c@[fXsHrXPzP}C', '2019-05-15 13:39:38', 15),
(1505, 0, 'cpqzAvzngP~W~PbEbLhFrF`FdXdH~k@tGxUtOnPlKxG`N', '2019-05-15 13:40:25', 15),
(1506, 0, 'wbozAznagP~BaEfb@y_@hDgCbU[|PbDtGpD~e@pItX`Jd', '2019-05-15 13:40:25', 15),
(1507, 0, 'ohe{AlwrdPlMdRlErHxCfFjwAtxBxP|WfMvQx]zk@`l@r', '2019-05-15 13:43:15', 15),
(1508, 0, 'oto{A`dlcPQlf@vCfa@|L`PlL\\fLhFzE?dV`IvEHxDnAt', '2019-05-15 13:41:54', 15),
(1601, 0, 'eaq`BtllgPnPyG|ZcNxPqHdc@eRzO_Iht@kZ`EkAxdAwb', '2019-05-15 13:22:20', 16),
(1602, 0, 'e_v|AzesfPvkFb|@pk@lIlbAzR`_@`FfWbFlJChP{KzQ_', '2019-05-15 13:32:31', 16),
(1603, 0, 'w{~|Al}|fPfNpHrTbN`UlPpZ|QbR`NrLvI`^pTx]`V`k@', '2019-05-15 13:26:38', 16),
(1604, 0, 'kop|Art|ePdI`Mj\\jkBhC|MvDjWfKlb@|eCex@zfCi|@x', '2019-05-15 13:33:28', 16),
(1605, 0, 'y`r|AzvoePxjDbJnsG`J_Fl{B{ThiBSbn@rDdd@rCrQ~M', '2019-05-15 13:35:03', 16),
(1606, 0, '_xn|AxbadPjSgs@pPkn@rWeJ`\\sKlCgAFwUOaClEkAtBo', '2019-05-15 13:35:03', 16),
(1607, 0, 'aov}A|twaPvV_@dO_G~Xw_@lGmUjEs@nOyPbEy@tOyMpV', '2019-05-15 13:24:26', 16),
(1608, 0, 'oxv}Ahd|aPvJdAlLlKzJjDbTvOpm@r[bCjDzFvAdh@x]r', '2019-05-15 13:32:54', 16),
(1609, 0, 'wz`_Bh{_dP|BEdE_JxLcMnOgNlCsBdAgBxHiG~r@_n@`@', '2019-05-15 13:28:24', 16),
(1610, 0, 'mnz|Ar{~dPzrCbA~QlmAhPhu@~\\huBfB`C`U~nAhW~sDx', '2019-05-15 13:27:08', 16),
(1611, 0, 'i}p}ApzwcPnBnFfBtXwBf\\sDzvB{BzXXtZwCvcAi@zSjA', '2019-05-15 13:23:57', 16),
(1612, 0, 'w~l~AxpnaPlLiLrmA~^tb@zPtELpc@|QvmAj^re@rRvEJ', '2019-05-15 13:21:12', 16),
(1613, 0, 'a}w`BtyaePfp@|FjBdAtfA`i@niBeXnpB|vC{`D~|D}e@', '2019-05-15 13:22:20', 16),
(1614, 0, 'aex_Bziv`PdAlCv@pA|B|AbBD~AkBpBcBdC_BlAyBpAcA', '2019-05-15 13:21:12', 16),
(1615, 0, '_{u_BzmgaPnFrLI|d@fH~SpNlWnVzU`W|i@fG`Yo@r\\|E', '2019-05-15 13:23:37', 16),
(1616, 0, '}xr|Ar`bcPnbCtAx|BqA~}@y@x{@y@xdBsAvhC_Aht@_A', '2019-05-15 13:28:24', 16),
(1617, 0, '}wr`BngrdPzAwFs@{DmAyBuC{CkBqAsBwAmCcA_GS_DgA', '2019-05-15 13:25:57', 16),
(1701, 0, 'm`|fBnyf`PvIdSbGfSvLvZxMdZvSnb@dSj_@DnDtDhDd@', '2019-05-15 15:53:46', 17),
(1702, 0, '{urfBbqtcP]dD_OvRiG|J}ChHkEfKoJ|KaAvE_HfHqCnL', '2019-05-15 15:53:46', 17),
(1703, 0, 'ygmfBprwcPhEyKhEgN~Nml@lB_ChCK`TbS`XjCrMyJvJ_', '2019-05-15 15:53:46', 17),
(1704, 0, '{urfBbqtcPnGBnSlIbF`DjJzEfGvCfRdJv[pOfa@bW`c@', '2019-05-15 15:53:46', 17),
(1705, 0, 'mmngBzyleP|eDAntBaAtC`AbEcBhj@zBtXSnB]zBe@~Vr', '2019-05-15 15:53:46', 17),
(1706, 0, '{rgfBtxwcPpg@{fAFaRgAglCp@mtBJeIn`@~@|e@iCvKt', '2019-05-15 15:53:46', 17),
(1707, 0, 'arifBdkf`PAbCv@|B`BdAzCfAr@dDz@rBlCW`De@jBrAy', '2019-05-15 15:53:46', 17),
(1708, 0, '{gueBfhf_Pzm@pAjbBfGlBaBhoAtHh_@Mbz@pExjEjI~l', '2019-05-15 15:53:46', 17),
(1709, 0, 'm~hbBnlm_Pts@b@lhBnFrA~@`tApCdF|BnXi@hqC|If]r', '2019-05-15 15:53:46', 17),
(1710, 0, 'iybdBfh{ePzCw@w@_BcCyDeDmE{AoCqB}EkAgGi@iE@eE', '2019-05-15 15:53:46', 17),
(1711, 0, '{gueBfhf_Pp@diD_Ap`AxAbvAeAhvBtAzpB}@tj@|@lWg', '2019-05-15 15:53:46', 17),
(1712, 0, 'm~hbBnlm_PTv\\oA|Cl@f_@TntA~AnbAuAdqAz@`_BkBhg', '2019-05-15 15:53:46', 17),
(1713, 0, 'sdjhBz_plPlcMi}PfvAo~A`{QshGneO{}RvnKkePtj@qg', '2019-05-15 15:53:46', 17),
(1714, 0, 'svsdB~foaPtIfNjOqHpEwC~CkCr@_@h@QnJmC`Be@hDaA', '2019-05-15 15:53:46', 17),
(1801, 0, 'err}Anab{Oc@dHaB~J}Gb\\_FjOiErj@iDrPkHlK_RjPaM', '2019-05-15 15:30:33', 18),
(1802, 0, '_qi_Btlg|OdDjAxJ~D`\\z`@fQ`P|Yb]zGxShLdR~Kdb@~', '2019-05-15 15:30:33', 18),
(1803, 0, 'qva~Azey~OaEzGgDbIcBhIuBlHq@|FNhEf@fD`AxDCzCS', '2019-05-15 15:30:33', 18),
(1804, 0, 'err}Anab{OrSp]dTdd@lIzNl^d[p@tCbh@ti@vU~VfBAL', '2019-05-15 15:30:33', 18),
(1805, 0, 'uv{{Alml}OhHjJxCdIxUfWnBvB~x@|gAdLvKdGnK`I|Er', '2019-05-15 15:30:33', 18),
(1901, 0, 'e`rzAl`f`PnBlDjp@_Bh`@iAlh@mKrc@qDhQdBpXtMhFl', '2019-05-15 17:41:43', 19),
(1902, 0, 'oevzAbjraPzGdBrC\\tC@zCG~D@nDBjBDdBBtDRvDl@hCz', '2019-05-15 17:41:42', 19),
(1903, 0, 'ia_{AllaaPpEnErElEfCfDbB`Dt@fDpEzWp@|G|@jIdAl', '2019-05-15 17:41:43', 19),
(1904, 0, 'k_i|A`gq_PhNLx\\uDxV[jTsGxJ}LzA{XyEu[oMwTwCeLc', '2019-05-15 17:41:42', 19),
(1905, 0, 'igq{A`r_cP^wHxHaMdYiT`\\}L`YqDf]{J~IgFjHiKzAkL', '2019-05-15 17:41:43', 19),
(1906, 0, 'itgzA`_wbPhDxGrN`E~G`N`JrT|IlEzSlh@xEvFfCvOrB', '2019-05-15 17:41:43', 19),
(1907, 0, 'insyApxmbPtI|B|a@rc@fHjLxA|BzEzCdZUbV~DhSlInZ', '2019-05-15 17:41:42', 19),
(1908, 0, 'kgnyAfspbPbICxg@jJ|Od@``@_GhYkJfb@{Hl\\kJtBsB`', '2019-05-15 17:41:43', 19),
(1909, 0, 'g`qzArvi_PnGJfGcFfBeBtB`BlBEhBm@rAoCl@oBhDiIr', '2019-05-15 17:41:43', 19),
(1910, 0, 'sq~yAl~dbPU~Ad@zDl@zCf@d@Pf@YZMjFBdLi@jIbxA|M', '2019-05-15 17:41:42', 19),
(1911, 0, 'gshzAjdvaP??^sCvAgBP]Fg@@qBGaH@qD^kAfCiClBeBh', '2019-05-15 17:41:43', 19),
(2001, 0, 'ejvyApwsaPLoQAqLZgFYkN^aW@uQbAki@|@ch@eAcJpBq', '2019-05-15 14:05:31', 20),
(2002, 0, 'izvxAhunaPp_@|e@xElJlGr[vJdKjr@zMnx@~DhQjGhT`', '2019-05-15 14:05:32', 20),
(2003, 0, 'gryxAhym`P`e@iH|FkDxK}LzE_DrJ{AjIxItCbEjOhGxE', '2019-05-15 14:05:32', 20),
(2004, 0, 'yy|yAxpu`PdDmFjFsb@pFqOjFi]BeKhEoPxAyQfF{MvEc', '2019-05-15 14:05:31', 20),
(2005, 0, 'gv`zAdzh_Px[M~IlCnIfJbHjBxRwC|JnDfOjKrOnRzHlR', '2019-05-15 14:05:31', 20),
(2006, 0, 'avjxAham`PqB~f@mDxG}HTmFyAgPuNcZ}b@uV{VkCaDiE', '2019-05-15 14:05:32', 20),
(2007, 0, 'mbfwA~zj`PwDby@gE~SYra@oCdDuQ`@_DbCwFvHNjWkHl', '2019-05-15 14:05:31', 20),
(2008, 0, 'mbfwA~zj`P`GJtCq@r@}AfBaA|CHnEUjB_BzByArGuCrB', '2019-05-15 14:05:31', 20),
(2009, 0, 'gmsxAlup`PhZx@pJiAbOoFhQsMhV{ZrHaV~KyLtAkExQu', '2019-05-15 14:05:32', 20),
(2010, 0, 'motxAd|`aPlXHhRfLtEJbb@vQ`V~GbNbK|YzInBvBrVnF', '2019-05-15 14:05:32', 20),
(2011, 0, '}enxAx|saP|OoIpJePbGsZfBuX|MaMnWyKzTkFrQL~UyD', '2019-05-15 14:05:31', 20),
(2101, 0, 'yx{wAfdzcPh`@LzRrGlOtMvEtShOfPx\\nd@|CJhHlFjWd', '2019-05-15 15:34:55', 21),
(2102, 0, 'wxvyAdencPvQKxRzBdHaF{Fwo@h@{ErBsB|F}n@jKiLtN', '2019-05-15 15:34:56', 21),
(2103, 0, 'sc_yAveibP|bAbCrQeAnSlJ|j@hCz[iAxHyD`[}EpPlL|', '2019-05-15 15:34:56', 21),
(2104, 0, 'et~wAfeybPxCc@^oBhGStIaEdVtDp]TjPmJjBIxOyMdGi', '2019-05-15 15:34:56', 21),
(2105, 0, '}a`wAfkodPpc@eGfGnFpGfnAvBdHbC~]lAbj@yM`H{Xjb', '2019-05-15 15:34:55', 21),
(2106, 0, '{jywAbeicPvJhTlKpJvDtBb\\|AdDAbJpErLh@lAiAU}Cm', '2019-05-15 15:34:55', 21),
(2107, 0, 'a{nxAf|nePdRsCl_@cI`UqKlUyLpTyF~Cg@bmAi@rg@kC', '2019-05-15 15:34:55', 21),
(2201, 0, '}q`wAjftcPvQ_S~Se\\`By@pM}OxWqOzHw@jJqFbM}B`Qw', '2019-05-15 15:47:15', 22),
(2202, 0, 'ufsvA`_acPxJhZrm@p~@fNzWtRtWf@zCz[pZ`H|EbZh@b', '2019-05-15 15:47:15', 22),
(2203, 0, 'uz~vAngkbP|@po@|E|ZtJjAjLiAlT{QbFyBdLUr@bMuBl', '2019-05-15 15:47:15', 22),
(2204, 0, '}kqwAzspaP`BwGj@_Ev@_DrA{ClDuAbBK|CL`@~DDzDT~', '2019-05-15 15:47:15', 22),
(2205, 0, '}muvAfnvaPrNvDrLDlYuI~WsPjX_c@vEiCjO{BlCM|D}@', '2019-05-15 15:47:15', 22),
(2206, 0, 'utyuAvv_cP`Gq_@nHoR|Gkp@jQu}@tm@`E`k@{@`YbBhc', '2019-05-15 15:47:15', 22),
(2207, 0, 'i~ouA|xgbPjiApg@zl@rv@vCjFfJrIxCvBnU`YzDlFpC`', '2019-05-15 15:47:15', 22),
(2208, 0, 'wxduA|jrbPxRlHrBnCpBnAda@dV`PZvZxJd{A|WzBjBvO', '2019-05-15 15:47:15', 22),
(2209, 0, '}kmuAtzdcPtEGnFcF|L}DbRsO`GXzAhGfHb_BXta@pAdC', '2019-05-15 15:47:15', 22),
(2210, 0, '}k~tAvh~bPdc@tGjx@zF~BzA`k@lBxJvJwEzn@ZpNnExN', '2019-05-15 15:47:15', 22),
(2211, 0, 'azjuArbvcPxJuKhB{IYyEaI_Os@cKd@sEvKaMY}CyH{Jd', '2019-05-15 15:47:15', 22),
(2212, 0, '_suuAznodPbTgHbVcPtEqPdCq_@Do\\`@{B|BYlBt@jCzA', '2019-05-15 15:47:15', 22),
(2213, 0, 'wvgtAfj_dPdD`HbCzGp@~DRnDZdFZ~IvCxBbD|@pDfAdD', '2019-05-15 15:47:15', 22),
(2214, 0, 'krxtAxeydP`h@}b@zW_IhEeAhFuAjGoMDmIyBsDuA{Lfx', '2019-05-15 15:47:15', 22),
(2215, 0, 'i`ftAfiieP`HjCdKbSbVvYdRpMpJvAzB|Bl[jKzXrDzBj', '2019-05-15 15:47:15', 22),
(2216, 0, 'u{lvAb_cePfF{StYaw@dBqDt@}Bn@qBzEgAbUdIhs@dJr', '2019-05-15 15:47:15', 22),
(2217, 0, 'ixmvAr_vdPjF_NkBqZa@cq@yc@w`DAcKhCkDf\\q@~IhI~', '2019-05-15 15:47:15', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `IDORDEN` int(11) NOT NULL,
  `PESO` varchar(45) DEFAULT NULL,
  `CANTIDAD` varchar(45) DEFAULT NULL,
  `FKTIPO_ENVIO` int(11) NOT NULL,
  `FKESTADO` int(11) NOT NULL,
  `MONTO` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `IDPAQUETE` int(11) NOT NULL,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `DIRECCION` varchar(45) DEFAULT NULL,
  `FKPERSONA_ENTREGA` int(11) NOT NULL,
  `FKMUNICIPIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete_orden`
--

CREATE TABLE `paquete_orden` (
  `IDPAQUETE_ORDEN` int(11) NOT NULL,
  `FECHA_HORA` datetime DEFAULT current_timestamp(),
  `FKESTADO` int(11) NOT NULL,
  `FKPAQUETE` int(11) NOT NULL,
  `FKORDEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `IDPERSONA` int(11) NOT NULL,
  `DPI` varchar(15) DEFAULT NULL,
  `NIT` varchar(15) DEFAULT NULL,
  `NOMBRE` varchar(150) DEFAULT NULL,
  `APELLIDO` varchar(150) DEFAULT NULL,
  `GENERO` varchar(2) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL,
  `CORREO` varchar(150) DEFAULT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  `DIRECCION` varchar(150) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` timestamp NULL DEFAULT current_timestamp(),
  `FKTIPO_PERSONA` int(11) NOT NULL,
  `FKESTADO` int(11) NOT NULL,
  `FKROL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `IDROL` int(11) NOT NULL,
  `NOMBRE` varchar(75) DEFAULT NULL,
  `DESCRIPCION` varchar(150) DEFAULT NULL,
  `FECHA_CREACION` timestamp NULL DEFAULT current_timestamp(),
  `FKESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`IDROL`, `NOMBRE`, `DESCRIPCION`, `FECHA_CREACION`, `FKESTADO`) VALUES
(1, 'Administrador', 'rol de administración para todo el sistema', '2021-08-26 19:51:36', 2),
(2, 'Secretaria', 'rol de secretaria para el uso del sistema', '2021-08-26 19:51:36', 2),
(3, 'Cartero', 'rol de cartero para el uso del sistema', '2021-08-26 19:52:10', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE `tarifa` (
  `IDTARIFA` int(11) NOT NULL,
  `MONTO` decimal(5,2) DEFAULT NULL,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` timestamp NULL DEFAULT current_timestamp(),
  `FKESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_codigo`
--

CREATE TABLE `tipo_codigo` (
  `IDTIPO_CODIGO` int(11) NOT NULL,
  `NOMBRE` varchar(75) DEFAULT NULL,
  `DESCRIPCION` varchar(150) DEFAULT NULL,
  `FECHA_CREACION` timestamp NOT NULL DEFAULT current_timestamp(),
  `FKESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_codigo`
--

INSERT INTO `tipo_codigo` (`IDTIPO_CODIGO`, `NOMBRE`, `DESCRIPCION`, `FECHA_CREACION`, `FKESTADO`) VALUES
(1, 'ENVIOS', 'clasificación para los códigos de envió', '2021-08-26 19:57:25', 2),
(2, 'N/A', 'codigo no definido', '2021-08-26 19:57:25', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empresa`
--

CREATE TABLE `tipo_empresa` (
  `IDTIPO_EMPRESA` int(11) NOT NULL,
  `NOMBRE` varchar(75) DEFAULT NULL,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_envio`
--

CREATE TABLE `tipo_envio` (
  `IDTIPO_ENVIO` int(11) NOT NULL,
  `NOMBRE` varchar(75) DEFAULT NULL,
  `DESCRIPCION` varchar(150) DEFAULT NULL,
  `FECHA_CREACION` timestamp NULL DEFAULT current_timestamp(),
  `FKESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`IDBITACORA`);

--
-- Indices de la tabla `codigo`
--
ALTER TABLE `codigo`
  ADD PRIMARY KEY (`IDCODIGO`),
  ADD KEY `fk_CODIGO_TIPO_CODIGO1_idx` (`FKTIPO_CODIGO`),
  ADD KEY `fk_CODIGO_ESTADO1_idx` (`FKESTADO`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`IDDEPARTAMENTO`);

--
-- Indices de la tabla `destinatario`
--
ALTER TABLE `destinatario`
  ADD PRIMARY KEY (`IDDESTINATARIO`),
  ADD KEY `fk_DESTINATARIO_ESTADO1_idx` (`FKESTADO`);

--
-- Indices de la tabla `destinatario_direccion`
--
ALTER TABLE `destinatario_direccion`
  ADD PRIMARY KEY (`IDDESTINATARIO_DIRECCION`),
  ADD KEY `fk_DESTINATARIO_DIRECCION_DESTINATARIO1_idx` (`FKDESTINATARIO`),
  ADD KEY `fk_DESTINATARIO_DIRECCION_MUNICIPIO1_idx` (`FKMUNICIPIO`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`IDEMPRESA`),
  ADD KEY `fk_EMPRESA_TIPO_EMPRESA1_idx` (`FKTIPO_EMPRESA`);

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`IDENVIO`),
  ADD KEY `fk_ENVIO_ESTADO1_idx` (`FKESTADO`),
  ADD KEY `fk_ENVIO_PERSONA1_idx` (`FKPERSONA_DESTINO`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`IDESTADO`);

--
-- Indices de la tabla `general_member_login_data`
--
ALTER TABLE `general_member_login_data`
  ADD PRIMARY KEY (`LOGIN_DATA_ID`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`IDMUNICIPIO`),
  ADD KEY `fk_MUNICIPIO_DEPARTAMENTO1_idx` (`FKDEPARTAMENTO`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`IDORDEN`),
  ADD KEY `fk_ORDEN_TIPO_ENVIO1_idx` (`FKTIPO_ENVIO`),
  ADD KEY `fk_ORDEN_ESTADO1_idx` (`FKESTADO`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`IDPAQUETE`),
  ADD KEY `fk_PAQUETE_PERSONA1_idx` (`FKPERSONA_ENTREGA`),
  ADD KEY `fk_PAQUETE_MUNICIPIO1_idx` (`FKMUNICIPIO`);

--
-- Indices de la tabla `paquete_orden`
--
ALTER TABLE `paquete_orden`
  ADD PRIMARY KEY (`IDPAQUETE_ORDEN`),
  ADD KEY `fk_PAQUETE_ORDEN_ESTADO1_idx` (`FKESTADO`),
  ADD KEY `fk_PAQUETE_ORDEN_PAQUETE1_idx` (`FKPAQUETE`),
  ADD KEY `fk_PAQUETE_ORDEN_ORDEN1_idx` (`FKORDEN`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`IDPERSONA`),
  ADD KEY `fk_PERSONA_ESTADO_idx` (`FKESTADO`),
  ADD KEY `fk_PERSONA_ROL1_idx` (`FKROL`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IDROL`),
  ADD KEY `fk_PERMISO_ESTADO1_idx` (`FKESTADO`);

--
-- Indices de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD PRIMARY KEY (`IDTARIFA`),
  ADD KEY `fk_TARIFA_ESTADO1_idx` (`FKESTADO`);

--
-- Indices de la tabla `tipo_codigo`
--
ALTER TABLE `tipo_codigo`
  ADD PRIMARY KEY (`IDTIPO_CODIGO`),
  ADD KEY `fk_TIPO_CODIGO_ESTADO1_idx` (`FKESTADO`);

--
-- Indices de la tabla `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  ADD PRIMARY KEY (`IDTIPO_EMPRESA`);

--
-- Indices de la tabla `tipo_envio`
--
ALTER TABLE `tipo_envio`
  ADD PRIMARY KEY (`IDTIPO_ENVIO`),
  ADD KEY `fk_TIPO_PAQUETE_ESTADO1_idx` (`FKESTADO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `IDBITACORA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `codigo`
--
ALTER TABLE `codigo`
  MODIFY `IDCODIGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `destinatario`
--
ALTER TABLE `destinatario`
  MODIFY `IDDESTINATARIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `destinatario_direccion`
--
ALTER TABLE `destinatario_direccion`
  MODIFY `IDDESTINATARIO_DIRECCION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `IDEMPRESA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `envio`
--
ALTER TABLE `envio`
  MODIFY `IDENVIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `IDESTADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `general_member_login_data`
--
ALTER TABLE `general_member_login_data`
  MODIFY `LOGIN_DATA_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `IDORDEN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paquete`
--
ALTER TABLE `paquete`
  MODIFY `IDPAQUETE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paquete_orden`
--
ALTER TABLE `paquete_orden`
  MODIFY `IDPAQUETE_ORDEN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `IDPERSONA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `IDROL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  MODIFY `IDTARIFA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_codigo`
--
ALTER TABLE `tipo_codigo`
  MODIFY `IDTIPO_CODIGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  MODIFY `IDTIPO_EMPRESA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_envio`
--
ALTER TABLE `tipo_envio`
  MODIFY `IDTIPO_ENVIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `codigo`
--
ALTER TABLE `codigo`
  ADD CONSTRAINT `fk_CODIGO_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CODIGO_TIPO_CODIGO1` FOREIGN KEY (`FKTIPO_CODIGO`) REFERENCES `tipo_codigo` (`IDTIPO_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `destinatario`
--
ALTER TABLE `destinatario`
  ADD CONSTRAINT `fk_DESTINATARIO_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `destinatario_direccion`
--
ALTER TABLE `destinatario_direccion`
  ADD CONSTRAINT `fk_DESTINATARIO_DIRECCION_DESTINATARIO1` FOREIGN KEY (`FKDESTINATARIO`) REFERENCES `destinatario` (`idDESTINATARIO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DESTINATARIO_DIRECCION_MUNICIPIO1` FOREIGN KEY (`FKMUNICIPIO`) REFERENCES `municipio` (`IDMUNICIPIO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `fk_EMPRESA_TIPO_EMPRESA1` FOREIGN KEY (`FKTIPO_EMPRESA`) REFERENCES `tipo_empresa` (`IDTIPO_EMPRESA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `envio`
--
ALTER TABLE `envio`
  ADD CONSTRAINT `fk_ENVIO_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ENVIO_PERSONA1` FOREIGN KEY (`FKPERSONA_DESTINO`) REFERENCES `persona` (`IDPERSONA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `fk_MUNICIPIO_DEPARTAMENTO1` FOREIGN KEY (`FKDEPARTAMENTO`) REFERENCES `departamento` (`IDDEPARTAMENTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `fk_ORDEN_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ORDEN_TIPO_ENVIO1` FOREIGN KEY (`FKTIPO_ENVIO`) REFERENCES `tipo_envio` (`IDTIPO_ENVIO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD CONSTRAINT `fk_PAQUETE_MUNICIPIO1` FOREIGN KEY (`FKMUNICIPIO`) REFERENCES `municipio` (`IDMUNICIPIO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PAQUETE_PERSONA1` FOREIGN KEY (`FKPERSONA_ENTREGA`) REFERENCES `persona` (`IDPERSONA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `paquete_orden`
--
ALTER TABLE `paquete_orden`
  ADD CONSTRAINT `fk_PAQUETE_ORDEN_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PAQUETE_ORDEN_ORDEN1` FOREIGN KEY (`FKORDEN`) REFERENCES `orden` (`IDORDEN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PAQUETE_ORDEN_PAQUETE1` FOREIGN KEY (`FKPAQUETE`) REFERENCES `paquete` (`idPAQUETE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_PERSONA_ESTADO` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PERSONA_ROL1` FOREIGN KEY (`FKROL`) REFERENCES `rol` (`IDROL`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `fk_PERMISO_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD CONSTRAINT `fk_TARIFA_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo_codigo`
--
ALTER TABLE `tipo_codigo`
  ADD CONSTRAINT `fk_TIPO_CODIGO_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo_envio`
--
ALTER TABLE `tipo_envio`
  ADD CONSTRAINT `fk_TIPO_PAQUETE_ESTADO1` FOREIGN KEY (`FKESTADO`) REFERENCES `estado` (`IDESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
