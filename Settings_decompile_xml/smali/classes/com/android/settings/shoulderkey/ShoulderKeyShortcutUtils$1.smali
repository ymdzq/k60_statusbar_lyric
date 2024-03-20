.class Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;
.super Ljava/lang/Object;
.source "ShoulderKeyShortcutUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 81
    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-static {p1}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->-$$Nest$fgetmContext(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "do_not_show_shoulder_key_shortcut_prompt"

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 85
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-static {p1, v1}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->-$$Nest$fputmDoNotShowDialogAgain(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;Z)V

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->-$$Nest$fputmDialogAlreadyShown(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;Z)V

    .line 89
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.android.settings"

    const-string v0, "com.android.settings.SubSettings"

    .line 90
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, ":android:show_fragment"

    const-string v0, "com.android.settings.shoulderkey.ShortcutSettings"

    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object p2, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-static {p2}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->-$$Nest$fgetmContext(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->shoulder_key_shortcut_settings:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, ":settings:show_fragment_title"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/high16 p2, 0x14800000

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$1;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-static {p0}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->-$$Nest$fgetmContext(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
