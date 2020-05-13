## Changelog

[简体中文](docs/CHANGELOG.zh-Hans.md)

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## TOC

- [Unreleased](#unreleased)
  - [Added](#addedunreleased)
  - [Changed](#changedunreleased)
  - [Fixed](#fixedunreleased)
  - [Removed](#removedunreleased)
- [0.5.7-alpha - 2020-05-06](#057-alpha---2020-05-06)
  - [Added](#added057-alpha)
  - [Changed](#changed057-alpha)
  - [Fixed](#fixed057-alpha)
  - [Removed](#removed057-alpha)
- [0.5.6-alpha - 2020-03-20](#056-alpha---2020-03-20)
  - [Added](#added056-alpha)
  - [Changed](#changed056-alpha)
  - [Deprecated](#deprecated056-alpha)
  - [Fixed](#fixed056-alpha)
- [0.5.5-alpha - 2020-03-04](#055-alpha---2020-03-04)
  - [Added](#added055-alpha)
  - [Fixed](#fixed055-alpha)
- [0.5.4-alpha - 2020-01-31](#054-alpha---2020-01-31)
  - [Added](#added054-alpha)
  - [Removed](#removed054-alpha)
  - [Fixed](#fixed054-alpha)
- [0.5.3-alpha - 2019-12-30](#053-alpha---2019-12-30)
  - [Fixed](#fixed053-alpha)
- [0.5.2-alpha - 2019-11-05](#052-alpha---2019-11-05)
  - [Added](#added052-alpha)
  - [Fixed](#fixed052-alpha)
- [0.5.1-alpha - 2019-08-02](#051-alpha---2019-08-02)
  - [Added](#added051-alpha)
  - [Fixed](#fixed051-alpha)
- [0.5.0-alpha - 2019-07-27](#050-alpha---2019-07-27)
  - [Added](#added050-alpha)
  - [Changed](#changed050-alpha)
  - [Fixed](#fixed050-alpha)
- [0.4.1-alpha - 2019-07-11](#041-alpha---2019-07-11)
  - [Added](#added041-alpha)
  - [Changed](#changed041-alpha)
  - [Fixed](#fixed041-alpha)
- [0.4.0-alpha - 2019-02-17](#040-alpha---2019-02-17)
  - [Fixed](#fixed040-alpha)

Click up arrow to go back to TOC.

### [Unreleased]

### [0.5.7-alpha] - 2020-05-06

#### Added(0.5.7-alpha)

- Add support for Xun Fei Yun Speech-to-Text WebSocket API.
- Add support for Baidu Automatic Speech Recognition API. [issue #68](https://github.com/BingLingGroup/autosub/issues/68)
- Add chars filter for the transcript result in XfyunWebSocketAPI.
- Add delete_chars in method list_to_googletrans.
- Add merge_src_assfile, merge_bilingual_assfile methods.
- Add stop words to split events in merge_src_assfile method.
- Add punctuations split in merge_src_assfile method.
- Add limitation in SplitIntoAudioPiece with an audio length of at least 4 bytes.
- Add support for src language auto-detection when not input `-SRC` language.

#### Changed(0.5.7-alpha)

- Change the replacement condition of the audio_split_cmd only when the user doesn't modify it.
- Change the MAX_REGION_SIZE_LIMIT into 60 seconds.
- Change all text file input decoding into "utf-8".
- Change the default style selection in subtitles translation.
- Change the loglevel in ffmpeg commands into `-loglevel error`.
- Change DEFAULT_MIN_REGION_SIZE to 0.5.
- Change langcodes into the optional dependency.

#### Fixed(0.5.7-alpha)

- Fix the size count bug when the last line been split in list_to_googletrans.
- Fix delete_chars issue when using `-of full-src`.
- Fix os.remove() PermissionError in api_xfyun.py.
- Fix DEFAULT_AUDIO_PRCS_CMDS and DEFAULT_CHECK_CMD.
- Fix the issue with path checking in dependency finding.
- Fix Baidu's strange error code handling. [issue #114](https://github.com/BingLingGroup/autosub/issues/114)

#### Removed(0.5.7-alpha)

- Remove Python 2.7 support.

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.5.6-alpha] - 2020-03-20

#### Added(0.5.6-alpha)

- Add extra environment variables check when finding dependencies. [issue #91](https://github.com/BingLingGroup/autosub/issues/91)
- Add arguments parser input when open it without arguments. [issue #92](https://github.com/BingLingGroup/autosub/issues/92)
- Add subtitles processing when not input `-SRC`.

#### Changed(0.5.6-alpha)

- Change option `-sml` into `-nsml`.
- Change defaults for Auditok.

#### Fixed(0.5.6-alpha)

- Fix Google Speech-to-Text API empty result response bug. [issue #89](https://github.com/BingLingGroup/autosub/issues/89)

#### Deprecated(0.5.6-alpha)

- Deprecate Python 2.7 support.

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.5.5-alpha] - 2020-03-04

#### Added(0.5.5-alpha)

- Add Google Cloud Speech-to-Text API Recognition Config json file input support.
- Add Speech-to-Text API recognition result json file output support. [issue #76](https://github.com/BingLingGroup/autosub/issues/76)
- Add exception when receiving error from [Google-Speech-v2](https://github.com/gillesdemey/google-speech-v2).
- Add Nuitka compatibility codes to stop program compiled by Nuitka when using Google Cloud service account credentials. [Nuitka pkg_resources.DistributionNotFound error](https://github.com/Nuitka/Nuitka/issues/146)

#### Fixed(0.5.5-alpha)

- Fix high memory/RAM usage partially by terminating child processes, lowering default multiprocessing counts and using `gc.collect(0)`. [issue #67](https://github.com/BingLingGroup/autosub/issues/67), [issue #74](https://github.com/BingLingGroup/autosub/issues/74)
- Fix dependency finding issue. [issue #82](https://github.com/BingLingGroup/autosub/issues/82)
- Fix ass override tags translation issue. [issue #79](https://github.com/BingLingGroup/autosub/issues/79)

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.5.4-alpha] - 2020-01-31

#### Added(0.5.4-alpha)

- Add basic Google Cloud Speech-to-Text support. [issue #10](https://github.com/BingLingGroup/autosub/issues/10)
- Add more bilingual subtitles formats output support. [issue #72](https://github.com/BingLingGroup/autosub/issues/72)

#### Removed(0.5.4-alpha)

- Remove gtransv2 support.

#### Fixed(0.5.4-alpha)

- Fix output format limits when input is a subtitles file.

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.5.3-alpha] - 2019-12-30

#### Fixed(0.5.3-alpha)

- Fix excessive transcoding time issue. [pull request #66](https://github.com/BingLingGroup/autosub/pull/66)
- Fix Auditok option issues. [issue #70](https://github.com/BingLingGroup/autosub/issues/70)
- Fix output option issue. [issue #73](https://github.com/BingLingGroup/autosub/issues/73)

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.5.2-alpha] - 2019-11-05

#### Added(0.5.2-alpha)

- Add issue templates.

#### Fixed(0.5.2-alpha)

- Fix last row of empty translation text missing issue. [issue #62](https://github.com/BingLingGroup/autosub/issues/62)
- Fix executable file detection problem in the current directory.

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.5.1-alpha] - 2019-08-02

#### Added(0.5.1-alpha)

- Add translation source lang code auto match.

#### Fixed(0.5.1-alpha)

- Fix method list_to_googletrans index error bug. [issue #48](https://github.com/BingLingGroup/autosub/issues/48)
- Fix unix subprocess.check_output compatibility. [issue #47](https://github.com/BingLingGroup/autosub/issues/47)
- Fix googletrans full-wide chars length too long issue. [issue #49](https://github.com/BingLingGroup/autosub/issues/49)

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.5.0-alpha] - 2019-07-27

#### Added(0.5.0-alpha)

- Add arguments for min and max region size. [issue #3](https://github.com/BingLingGroup/autosub/issues/3)
- Add metadata.py. [issue #5](https://github.com/BingLingGroup/autosub/issues/5)
- Add output file name detection to avoid any file overwritting.
- Add new dev branch for latest dev codes to push.
- Add more output format(ass, ssa, sub, mpl2, tmp). [issue #20](https://github.com/BingLingGroup/autosub/issues/20)
- Add arguments for [auditok.StreamTokenizer](https://auditok.readthedocs.io/en/latest/core.html#class-summary) and [energy_threshold](https://auditok.readthedocs.io/en/latest/apitutorial.html#examples-using-real-audio-data). [issue #30](https://github.com/BingLingGroup/autosub/issues/30)
- Add overwrite option `-y` for output overwrite and no input pause. [issue #29](https://github.com/BingLingGroup/autosub/issues/29)
- Add specific .ass style when output format is .ass. [issue #21](https://github.com/BingLingGroup/autosub/issues/21)
- Add timings generating function instead of using speech-to-text api. [issue #14](https://github.com/BingLingGroup/autosub/issues/14)
- Add arguments for [confidence](https://github.com/gillesdemey/google-speech-v2#response) control. [issue #6](https://github.com/BingLingGroup/autosub/issues/6)
- Add arguments for dropping empty lines from speech-to-text results.
- Add free api to use by importing the [googletrans](https://github.com/ssut/py-googletrans). [issue #25](https://github.com/BingLingGroup/autosub/issues/25)
- Add bilingual subtitle output. [issue #16](https://github.com/BingLingGroup/autosub/issues/16)
- Add multi-types subtitles files output at the same time (regions/source language/destination language/bilingual subtitles) when using `--output-files` option.
- Add exception to stop the workflow in main(). [issue #35](https://github.com/BingLingGroup/autosub/issues/35)
- Add bilingual subtitle styles input. [issue #32](https://github.com/BingLingGroup/autosub/issues/32)
- Add subtitles translate. [issue #38](https://github.com/BingLingGroup/autosub/issues/38)
- Add function to auto-replace `’` to `'` in the translation result.
- Add py-googletrans control args. [issue #36](https://github.com/BingLingGroup/autosub/issues/36)
- Add lang codes support.(Depend on langcodes package) [issue #34](https://github.com/BingLingGroup/autosub/issues/34)
- Add complex ass json output. [issue #39](https://github.com/BingLingGroup/autosub/issues/39)
- Add audio preprocessing. [issue #7](https://github.com/BingLingGroup/autosub/issues/7)
- Add options to control every ffmpeg command. [issue #43](https://github.com/BingLingGroup/autosub/issues/43)
- Add temp file save function. [issue #22](https://github.com/BingLingGroup/autosub/issues/22)
- Add only audio fragments output. [issue #44](https://github.com/BingLingGroup/autosub/issues/44)
- Add subtitles(first line) language detection powered by googletrans. [issue #40](https://github.com/BingLingGroup/autosub/issues/40)
- Add http, https proxy support.(Set environment variables) [issue #17](https://github.com/BingLingGroup/autosub/issues/17)
- Add i18n support. [issue #9](https://github.com/BingLingGroup/autosub/issues/9)
- Add i18n language choice. [issue #45](https://github.com/BingLingGroup/autosub/issues/45)

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

#### Changed(0.5.0-alpha)

- [issue #5](https://github.com/BingLingGroup/autosub/issues/5).
  - Rewrite help messages.
  - Refactor argparse.
  - Refactor constaints.
- Change dev branch into origin branch.
- Use alpha branch for alpha releases.
- Change docs.
- Change audio conversion workflow to get a better audio quality to process. Currently will create two files from the original source file separately. 48kHz/16bit/mono .wav for local speech regions finding. 44.1kHz/24bit/mono .flac for google speech v2 api upload or in other words, speech recognition. Need to point out that [Google-Speech-v2](https://github.com/gillesdemey/google-speech-v2) is wrong on the supported .flac audio channel number. According to my test the api doesn't support the 2-channel .flac file. [agermanidis/autosub issue #155](https://github.com/agermanidis/autosub/issues/155)
- Refactor internal regions unit to millisecond. [issue #23](https://github.com/BingLingGroup/autosub/issues/23)
- Refactor speech regions detection by using auditok. [issue #27](https://github.com/BingLingGroup/autosub/issues/27)
- Refactor generate_subtitles into 3 parts. [issue #24](https://github.com/BingLingGroup/autosub/issues/24)
- Refactor api_gen_text to 2 parts. One is speech_to_text. Another is text_translation. [issue #33](https://github.com/BingLingGroup/autosub/issues/33)
- Refactor txt output. Now txt can output regions.
- Refactor list_to_sub_str. [issue #37](https://github.com/BingLingGroup/autosub/issues/37)

#### Fixed(0.5.0-alpha)

- Fix vtt output replacing all commas to dots issues.
- [issue #8](https://github.com/BingLingGroup/autosub/issues/8)
  - Fix python3 compatibility issues.
  - Fix Nuitka build after updating Nuitka to 0.6.4(Environment Anaconda2 python3.5).

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.4.1-alpha] - 2019-07-11

[0.4.1-alpha release](https://github.com/BingLingGroup/autosub/releases/tag/0.4.1-alpha)

#### Added(0.4.1-alpha)

- Add https speech-to-text api url and url choice argument. [agermanidis/autosub pull request #135](https://github.com/agermanidis/autosub/pull/135)
- Add external speech-to-text regions control from external subtitle files. [agermanidis/autosub pull request #159](https://github.com/agermanidis/autosub/pull/159)
- Add scripts to build, release and etc.

#### Changed(0.4.1-alpha)

- Change docs.

#### Fixed(0.4.1-alpha)

- Fix vague language codes caused wrong recognition result. [agermanidis/autosub pull request #136](https://github.com/agermanidis/autosub/pull/136)

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

### [0.4.0-alpha] - 2019-02-17

[0.4.0-alpha release](https://github.com/BingLingGroup/autosub/releases/tag/0.4.0-alpha)

#### Fixed(0.4.0-alpha)

- Fix several issues. [agermanidis/autosub pull request #128](https://github.com/agermanidis/autosub/pull/128) by [@iWangJiaxiang](https://github.com/iWangJiaxiang)
  - Fix "ffmpeg.exe" causes "Dependency not found: ffmpeg" on Windows.
  - Fix "ValueError" when the response data of "SpeechRecognizer" couldn't be parsed to JSON Object.
  - Fix Temp Folder Permissions Denied on Windows 10. [agermanidis/autosub issue #15](https://github.com/agermanidis/autosub/issues/15)
- Fix JSONDecodeError caused crash. [agermanidis/autosub pull request #131](https://github.com/agermanidis/autosub/pull/131) by [@raryelcostasouza](https://github.com/raryelcostasouza)

<escape><a href = "#TOC">&nbsp;↑&nbsp;</a></escape>

[Unreleased]: https://github.com/BingLingGroup/autosub/compare/0.5.7-alpha...HEAD
[0.5.7-alpha]: https://github.com/BingLingGroup/autosub/compare/0.5.6-alpha...0.5.7-alpha
[0.5.6-alpha]: https://github.com/BingLingGroup/autosub/compare/0.5.5-alpha...0.5.6-alpha
[0.5.5-alpha]: https://github.com/BingLingGroup/autosub/compare/0.5.4-alpha...0.5.5-alpha
[0.5.4-alpha]: https://github.com/BingLingGroup/autosub/compare/0.5.3-alpha...0.5.4-alpha
[0.5.3-alpha]: https://github.com/BingLingGroup/autosub/compare/0.5.2-alpha...0.5.3-alpha
[0.5.2-alpha]: https://github.com/BingLingGroup/autosub/compare/0.5.1-alpha...0.5.2-alpha
[0.5.1-alpha]: https://github.com/BingLingGroup/autosub/compare/0.5.0-alpha...0.5.1-alpha
[0.5.0-alpha]: https://github.com/BingLingGroup/autosub/compare/0.4.1-alpha...0.5.0-alpha
[0.4.1-alpha]: https://github.com/BingLingGroup/autosub/compare/0.4.0-alpha...0.4.1-alpha
[0.4.0-alpha]: https://github.com/BingLingGroup/autosub/releases/tag/0.4.0-alpha
