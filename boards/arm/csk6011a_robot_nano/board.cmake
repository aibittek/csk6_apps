# SPDX-License-Identifier: Apache-2.0

board_runner_args(jlink "--device=Venus")
board_runner_args(pyocd "--target=csk6001")
board_runner_args(csk "--chip=6")

set_ifndef(BOARD_DEBUG_RUNNER pyocd)
set_ifndef(BOARD_FLASH_RUNNER pyocd)

include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/csk.board.cmake)
