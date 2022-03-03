// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "../SvgHelperBase.sol";

contract AvalancheUSDC is SvgHelperBase {
    using Strings for uint256;

    constructor(uint256 _decimals) SvgHelperBase(_decimals) {}

    function getTokenSvg(
        uint256 _tokenId,
        uint256 _suppliedLiquidity,
        uint256 _totalSuppliedLiquidity
    ) public view virtual override returns (string memory) {
        string memory tokenId = _tokenId.toString();
        string memory suppliedLiquidity = _divideByPowerOf10(_suppliedLiquidity, tokenDecimals, 3);
        string memory sharePercent = _calculatePercentage(_suppliedLiquidity, _totalSuppliedLiquidity);
        return
            string(
                abi.encodePacked(
                    '<svg version="1.1" id="prefix__Layer_1" xmlns="http://www.w3.org/2000/svg" x="0" y="0" viewBox="0 0 405 405" xml:space="preserve"><style>.prefix__st2{fill:#fff}.prefix__st31{font-family:&apos;Courier&apos;}.prefix__st32{font-size:24px}</style><radialGradient id="prefix__SVGID_1_" cx="-452.223" cy="-503.611" r="1" gradientTransform="matrix(0 327.499 327.499 0 165134.5 148102.563)" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#e84142"/><stop offset="1"/></radialGradient><path d="M30 0h345c16.57 0 30 13.43 30 30v345c0 16.57-13.43 30-30 30H30c-16.57 0-30-13.43-30-30V30C0 13.43 13.43 0 30 0z" fill="url(#prefix__SVGID_1_)"/><radialGradient id="prefix__SVGID_00000112620898175617978930000002313274521866282382_" cx="-451.644" cy="-502.284" r="1" gradientTransform="matrix(0 270.995 167.538 0 84354.203 122470.75)" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#fff"/><stop offset=".711" stop-color="#2775ca"/><stop offset="1" stop-opacity="0"/><stop offset="1" stop-opacity="0"/></radialGradient><path d="M214.93 95.88c-5.94-8.8-18.93-8.8-24.87 0-43.56 64.49-70.9 107.33-70.9 149.07 0 45.6 37.28 82.55 83.33 82.55s83.33-36.95 83.33-82.55c.01-41.74-27.33-84.58-70.89-149.07z" fill="url(#prefix__SVGID_00000112620898175617978930000002313274521866282382_)"/><path class="prefix__st2" d="M271.41 338.62a.8.8 0 00-.59-.24h-1.66a.8.8 0 00-.59.24.8.8 0 00-.24.59v5c0 .11-.02.22-.06.32-.04.1-.1.2-.18.27a.8.8 0 01-.59.24h-8.33c-.11 0-.22-.02-.32-.06s-.2-.1-.27-.18-.14-.17-.18-.27a.866.866 0 01-.06-.32v-5a.8.8 0 00-.24-.59.8.8 0 00-.59-.24h-1.67c-.22 0-.43.09-.59.24s-.24.37-.24.59v15a.8.8 0 00.24.59.8.8 0 00.59.24h1.67a.8.8 0 00.59-.24.8.8 0 00.24-.59v-5a.8.8 0 01.24-.59.8.8 0 01.59-.24h8.33a.8.8 0 01.59.24.8.8 0 01.24.59v5c0 .11.02.22.06.32.04.1.1.2.18.27s.17.14.27.18.21.06.32.06h1.66c.11 0 .22-.02.32-.06.1-.04.2-.1.27-.18s.14-.17.18-.27c.04-.1.06-.21.06-.32v-15c0-.11-.02-.22-.06-.32-.04-.11-.1-.2-.18-.27zM321.41 341.91a.8.8 0 00-.59-.24h-5.83v.04h-2.5a.8.8 0 01-.59-.24.8.8 0 01-.24-.59v-5a.8.8 0 00-.24-.59.8.8 0 00-.59-.24h-1.66c-.11 0-.22.02-.32.06-.1.04-.2.1-.27.18a.8.8 0 00-.24.59v18.33c0 .11.02.22.06.32.04.1.1.2.18.27a.8.8 0 00.59.24h1.66c.11 0 .22-.02.32-.06.1-.04.2-.1.27-.18a.8.8 0 00.24-.59v-8.33a.8.8 0 01.24-.59.8.8 0 01.59-.24h5a.8.8 0 01.59.24.8.8 0 01.24.59v8.33c0 .11.02.22.06.32.04.1.1.2.18.27a.8.8 0 00.59.24h1.66c.11 0 .22-.02.32-.06.1-.04.2-.1.27-.18a.8.8 0 00.24-.59v-11.7c0-.11-.02-.22-.06-.32a.624.624 0 00-.17-.28zM338.08 341.91a.8.8 0 00-.59-.24h-11.67c-.11 0-.22.02-.32.06a.98.98 0 00-.27.18.8.8 0 00-.24.59v11.66a.8.8 0 00.24.59.8.8 0 00.59.24h11.67a.8.8 0 00.59-.24.8.8 0 00.24-.59v-1.66c0-.11-.02-.22-.06-.32-.04-.1-.1-.2-.18-.27a.8.8 0 00-.59-.24h-8.33c-.22 0-.43-.09-.59-.24-.16-.16-.24-.37-.24-.59s.09-.43.24-.59c.16-.16.37-.24.59-.24h8.33a.8.8 0 00.59-.24.8.8 0 00.24-.59v-6.66c0-.11-.02-.22-.06-.32a.841.841 0 00-.18-.29zm-3.16 4.24a.8.8 0 01-.18.27.8.8 0 01-.59.24h-5a.8.8 0 01-.59-.24.8.8 0 01-.24-.59.8.8 0 01.24-.59.8.8 0 01.59-.24h5a.8.8 0 01.59.24.8.8 0 01.24.59c0 .11-.02.22-.06.32zM354.74 341.91a.8.8 0 00-.59-.24l-2.5.04h-9.17a.8.8 0 00-.59.24.8.8 0 00-.24.59v11.66c0 .11.02.22.06.32.04.1.1.2.18.27a.8.8 0 00.59.24h1.67a.8.8 0 00.59-.24.8.8 0 00.24-.59v-8.33a.8.8 0 01.24-.59.8.8 0 01.59-.24h5c.11 0 .22.02.32.06.1.04.2.1.27.18a.8.8 0 01.24.59v8.33c0 .11.02.22.06.32.04.1.1.2.18.27a.8.8 0 00.59.24h1.67a.8.8 0 00.59-.24.8.8 0 00.24-.59v-11.7c0-.11-.02-.22-.06-.32a.65.65 0 00-.17-.27zM288.08 341.91a.8.8 0 00-.59-.24h-1.67c-.11 0-.22.02-.32.06a.98.98 0 00-.27.18.8.8 0 00-.24.59v8.33a.8.8 0 01-.24.59.8.8 0 01-.59.24h-5c-.11 0-.22-.02-.32-.06-.1-.04-.2-.1-.27-.18a.8.8 0 01-.24-.59v-8.33c0-.11-.02-.22-.06-.32-.04-.1-.1-.2-.18-.27a.8.8 0 00-.59-.24h-1.67c-.11 0-.22.02-.32.06a.98.98 0 00-.27.18.8.8 0 00-.24.59v11.66a.8.8 0 00.24.59.8.8 0 00.59.24h8.34c.22 0 .43.09.59.24.16.16.24.37.24.59s-.09.43-.24.59c-.16.16-.37.24-.59.24h-5c-.11 0-.22.02-.32.06s-.2.1-.27.18-.14.17-.18.27c-.04.1-.06.21-.06.32v1.66c0 .11.02.22.06.32.04.1.1.2.18.27s.17.14.27.18.21.06.32.06h8.33a.8.8 0 00.59-.24.8.8 0 00.24-.59v-16.66c0-.11-.02-.22-.06-.32-.05-.08-.12-.17-.19-.25zM304.74 341.91a.8.8 0 00-.59-.24h-11.67a.8.8 0 00-.59.24.8.8 0 00-.24.59v16.66c0 .11.02.22.06.32.04.1.1.2.18.27a.8.8 0 00.59.24h1.67a.8.8 0 00.59-.24.8.8 0 00.24-.59v-3.33a.8.8 0 01.24-.59.8.8 0 01.59-.24h8.34a.8.8 0 00.59-.24.8.8 0 00.24-.59v-11.66a.866.866 0 00-.24-.6zm-3.09 8.93a.8.8 0 01-.52.77c-.1.04-.21.06-.32.06h-5a.8.8 0 01-.59-.24.8.8 0 01-.24-.59v-5a.8.8 0 01.24-.59.8.8 0 01.59-.24h5a.866.866 0 01.6.24.8.8 0 01.24.59v5zM329.97 96.59c.28 0 .57-.05.83-.16s.5-.27.7-.47a2.116 2.116 0 00.63-1.53V81.49a2.182 2.182 0 00-.62-1.52 2.105 2.105 0 00-1.52-.63h-4.31c-.57 0-1.12.23-1.52.63-.4.4-.63.95-.63 1.52v4.31c0 .28-.05.57-.16.83s-.27.5-.47.7a2.116 2.116 0 01-1.53.63h-4.31c-.28 0-.57-.05-.83-.16s-.5-.27-.7-.47a2.116 2.116 0 01-.63-1.53V64.24c0-.28.05-.57.16-.83s.27-.5.47-.7a2.116 2.116 0 011.53-.63h1.25c.42 0 .84-.12 1.2-.36.35-.24.63-.57.79-.97a2.138 2.138 0 00-.49-2.33l-7.68-7.76c-.2-.21-.44-.37-.7-.48a2.124 2.124 0 00-1.66 0c-.26.11-.5.27-.7.48l-7.72 7.76c-.3.3-.51.68-.59 1.09s-.04.85.12 1.24.43.73.78.96c.35.24.76.37 1.19.37h1.25c.29 0 .57.05.83.16s.5.27.7.47c.2.2.36.44.47.7.11.26.16.55.16.83v30.2c0 .28.05.57.16.83s.27.5.47.7a2.116 2.116 0 001.53.63h21.55z"/><path class="prefix__st2" d="M324.14 70.08a2.116 2.116 0 001.53.63h4.31c.28 0 .57-.05.83-.16s.5-.27.7-.47a2.116 2.116 0 00.63-1.53v-4.31c0-.28.05-.57.16-.83s.27-.5.47-.7a2.116 2.116 0 011.53-.63h4.32c.28 0 .57.05.83.16s.5.27.7.47c.2.2.36.44.47.7.11.26.16.55.16.83v21.57c0 .28-.05.57-.16.83s-.27.5-.47.7a2.116 2.116 0 01-1.53.63h-1.26c-.42 0-.84.13-1.2.36-.35.24-.63.57-.79.97-.16.39-.2.83-.11 1.24.09.42.3.8.6 1.1l7.73 7.72c.2.2.44.37.7.48a2.124 2.124 0 002.36-.48l7.72-7.72c.3-.3.5-.69.58-1.1.08-.42.04-.85-.12-1.24a2.12 2.12 0 00-.79-.96c-.35-.24-.77-.36-1.19-.36h-1.29c-.28 0-.57-.05-.83-.16s-.5-.27-.7-.47a2.116 2.116 0 01-.63-1.53V55.6c0-.28-.05-.57-.16-.83s-.27-.5-.47-.7c-.2-.2-.44-.36-.7-.47-.26-.11-.55-.16-.83-.16h-21.57c-.28 0-.57.05-.83.16s-.5.27-.7.47a2.116 2.116 0 00-.63 1.53v12.95c0 .28.05.57.16.83s.27.5.47.7z"/><text transform="translate(73.686 67)" class="prefix__st2 prefix__st31 prefix__st32">',
                    suppliedLiquidity,
                    ' USDC</text><text transform="rotate(-90 213.61 143.092)" class="prefix__st2 prefix__st31 prefix__st32">',
                    sharePercent,
                    '%</text><path fill="none" stroke="#fff" stroke-miterlimit="10" d="M61.86 267.12V114.71"/><text transform="translate(79.915 355)" class="prefix__st2 prefix__st31" font-size="10">ID: ',
                    tokenId,
                    '</text><g><path d="M60.19 67c4.71 0 8.5-3.79 8.5-8.5S64.9 50 60.19 50s-8.5 3.79-8.5 8.5 3.79 8.5 8.5 8.5z" fill="#2775ca"/><path class="prefix__st2" d="M62.52 59.85c0-1.24-.74-1.66-2.23-1.84-1.06-.14-1.27-.42-1.27-.92s.35-.81 1.06-.81c.64 0 .99.21 1.17.74.04.11.14.18.25.18h.57c.14 0 .25-.11.25-.25v-.04c-.14-.78-.78-1.38-1.59-1.45v-.86c0-.14-.11-.25-.28-.28h-.55c-.14 0-.25.11-.28.28v.81c-1.06.14-1.74.85-1.74 1.74 0 1.17.71 1.63 2.2 1.81.99.18 1.31.39 1.31.96s-.5.96-1.17.96c-.92 0-1.24-.39-1.35-.92-.04-.14-.14-.21-.25-.21h-.6c-.14 0-.25.11-.25.25v.04c.14.89.71 1.52 1.88 1.7v.85c0 .14.11.25.28.28h.53c.14 0 .25-.11.28-.28v-.85c1.07-.19 1.78-.94 1.78-1.89z"/><path class="prefix__st2" d="M58.38 63.56c-2.76-.99-4.18-4.07-3.15-6.8.53-1.49 1.7-2.62 3.15-3.15.14-.07.21-.18.21-.35v-.5c0-.14-.07-.25-.21-.28-.04 0-.11 0-.14.04a6.354 6.354 0 00-4.14 8 6.364 6.364 0 004.14 4.14c.14.07.28 0 .32-.14.04-.04.04-.07.04-.14v-.5c-.01-.1-.11-.24-.22-.32zm3.75-11.05c-.14-.07-.28 0-.32.14-.04.04-.04.07-.04.14v.5c0 .14.11.28.21.35 2.76.99 4.18 4.07 3.15 6.8a5.225 5.225 0 01-3.15 3.15c-.14.07-.21.18-.21.35v.5c0 .14.07.25.21.28.04 0 .11 0 .14-.04a6.354 6.354 0 004.14-8c-.62-2.01-2.18-3.53-4.13-4.17z"/></g><g><path d="M142.44 77.23H56.69c-2.76 0-5 2.24-5 5v7.47c0 2.76 2.24 5 5 5h85.75c2.76 0 5-2.24 5-5v-7.47c0-2.76-2.24-5-5-5z" fill="#e84142"/><text transform="translate(56.685 89.706)" class="prefix__st2" font-size="12" font-family="Courier-Bold">ON AVALANCHE</text></g></svg>'
                )
            );
    }
}
