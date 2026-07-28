# Mandarin Talking-Head Rough Cut

面向中文单人口播与轻对谈视频的信息保真粗剪 Skill。

它通过词级时间轴清理前摇、口误、NG、多次重录、重复表达、语气词、过长停顿和场外插话，并在渲染前复查语义与叙事连续性。可选能力包括字幕、主题与身份包装、花字、推近、故事暗角、引语滤镜、BGM、定点音效和剪辑报告。

## 特点

- 信息保真：拿不准时默认保留，优先局部修剪而不是整句删除。
- 词级粗剪：以 `segments.json` 和可审阅的 `timeline.md` 为真值。
- 可复核：渲染前生成成片逐字稿，渲染后检查所有删除接口。
- 原片只读：所有中间产物和成片写入独立输出目录。
- 可扩展后期：粗剪完成后可继续生成字幕、包装、音效和视觉效果。

## 安装

### Codex

```bash
git clone https://github.com/m15851855393-boop/mandarin-talking-head-rough-cut.git \
  ~/.codex/skills/rough-cut
```

重新打开 Codex 后，可以使用 `$rough-cut`，也可以直接描述口播粗剪任务。

### Claude Code

```bash
git clone https://github.com/m15851855393-boop/mandarin-talking-head-rough-cut.git \
  ~/.claude/skills/rough-cut
```

重新打开 Claude Code 后，可以使用 `/rough-cut`，也可以在请求中明确要求使用 `rough-cut` Skill。

### Windows

下载或克隆仓库后，双击：

```text
scripts\install_windows.cmd
```

详细说明见 [`references/windows_setup.md`](references/windows_setup.md)。

## 使用示例

```text
请使用 rough-cut 清理这条中文口播视频。
删除前摇、口误、NG、重复表达、过长停顿和现场插话，
但不要改变原意。先生成可审阅的剪辑方案，再执行渲染。
```

完整工作流和安全约束见 [`SKILL.md`](SKILL.md)。

## 依赖与云服务

- Python 3.11 或兼容版本
- FFmpeg
- 自动转写需要使用安装者自己的火山引擎语音识别和 TOS 配置

自动转写会临时上传抽取后的音频，可能产生存储、流量和识别费用。Skill 要求在首次上传前向用户说明数据流并取得确认。配置文件和密钥不得提交到仓库或粘贴到聊天中。

## 隐私

仓库不包含任何可用的 API 密钥、账号配置或原始视频素材。`assets/config.example.json` 只提供空白占位模板。

## License

除第三方字体外，本项目采用 [Apache License 2.0](LICENSE)。

`assets/fonts/` 中的 Source Han Serif 字体继续使用随字体附带的
[SIL Open Font License](assets/fonts/SourceHanSerif-LICENSE.txt)，不属于本项目的
Apache-2.0 授权范围。
