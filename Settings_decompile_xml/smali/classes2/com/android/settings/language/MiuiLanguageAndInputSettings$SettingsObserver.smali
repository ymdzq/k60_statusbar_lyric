.class Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiLanguageAndInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/MiuiLanguageAndInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableFullScreenKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;

.field private mEnabledMechKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;

.field final synthetic this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    .line 1051
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1052
    iput-object p3, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1077
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-static {v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$fgetsMiuiImeBottomSupport(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mEnableFullScreenKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isSupportMechKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mEnabledMechKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 6

    .line 1056
    iget-object v0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    .line 1058
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 1057
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "selected_input_method_subtype"

    .line 1059
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1061
    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-static {v2}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$fgetsMiuiImeBottomSupport(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mEnableFullScreenKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;

    if-nez v2, :cond_0

    .line 1063
    new-instance v2, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;

    iget-object v4, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v4, v5}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;-><init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mEnableFullScreenKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;

    :cond_0
    const-string v2, "enable_miui_ime_bottom_view"

    .line 1065
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mEnableFullScreenKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnableFullScreenKeyboardObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1067
    :cond_1
    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isSupportMechKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1068
    iget-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mEnabledMechKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;

    if-nez v2, :cond_2

    .line 1069
    new-instance v2, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;

    iget-object v4, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v4, v5}, Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;-><init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mEnabledMechKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;

    .line 1071
    :cond_2
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$SettingsObserver;->mEnabledMechKeyboardObserver:Lcom/android/settings/language/MiuiLanguageAndInputSettings$EnabledMechKeyboardObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    return-void
.end method
