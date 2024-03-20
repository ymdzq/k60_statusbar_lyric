.class public Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;
.super Landroid/database/ContentObserver;
.source "MiuiLanguageAndInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/MiuiLanguageAndInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultImeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1316
    iput-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    .line 1317
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1322
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1323
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-static {p1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$mupdateInputMethodPreferenceViews(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)V

    .line 1324
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$mupdatePrivacyInputModePreference(Lcom/android/settings/language/MiuiLanguageAndInputSettings;Z)V

    .line 1326
    iget-object p1, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-static {p1}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$fgetmContext(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "default_input_method"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1327
    iget-object p0, p0, Lcom/android/settings/language/MiuiLanguageAndInputSettings$DefaultImeObserver;->this$0:Lcom/android/settings/language/MiuiLanguageAndInputSettings;

    invoke-static {p0}, Lcom/android/settings/language/MiuiLanguageAndInputSettings;->-$$Nest$fgetmContext(Lcom/android/settings/language/MiuiLanguageAndInputSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
