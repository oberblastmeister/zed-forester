use zed_extension_api as zed;

struct ForesterExtension;

impl zed::Extension for ForesterExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        Ok(zed::Command {
            command: worktree
                .which("forester")
                .unwrap_or_else(|| "forester".to_string()),
            args: vec!["lsp".to_string()],
            env: vec![],
        })
    }
}

zed::register_extension!(ForesterExtension);
