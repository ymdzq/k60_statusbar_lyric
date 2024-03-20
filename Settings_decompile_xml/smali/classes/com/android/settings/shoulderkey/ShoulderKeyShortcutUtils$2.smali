.class Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$2;
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

    .line 103
    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$2;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 106
    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$2;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-static {p1}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->-$$Nest$fgetmContext(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "do_not_show_shoulder_key_shortcut_prompt"

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 110
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$2;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    invoke-static {p1, v1}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->-$$Nest$fputmDoNotShowDialogAgain(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;Z)V

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils$2;->this$0:Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->-$$Nest$fputmDialogAlreadyShown(Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;Z)V

    return-void
.end method
