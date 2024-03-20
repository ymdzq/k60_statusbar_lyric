.class Lcom/android/settings/KeyDownloadDialogActivity$1;
.super Ljava/lang/Object;
.source "KeyDownloadDialogActivity.java"

# interfaces
.implements Lcom/android/settings/KeyDownloadDialog$IOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyDownloadDialogActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyDownloadDialogActivity;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$shortcut:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyDownloadDialogActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->this$0:Lcom/android/settings/KeyDownloadDialogActivity;

    iput-object p2, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->val$shortcut:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->this$0:Lcom/android/settings/KeyDownloadDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNegativeBtnClick()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 2

    const-string v0, "knock_gesture_v"

    .line 58
    iget-object v1, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->val$shortcut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->this$0:Lcom/android/settings/KeyDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/KeyDownloadDialogActivity;->gotoKnockGestureVSetting()V

    goto :goto_1

    :cond_0
    const-string v0, "back_double_tap"

    .line 60
    iget-object v1, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->val$shortcut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "back_triple_tap"

    iget-object v1, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->val$shortcut:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "fingerprint_double_tap"

    .line 63
    iget-object v1, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->val$shortcut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->this$0:Lcom/android/settings/KeyDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/KeyDownloadDialogActivity;->gotoFingerPrintTapSettings()V

    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->this$0:Lcom/android/settings/KeyDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/KeyDownloadDialogActivity;->gotoBackTapGestureSettings()V

    .line 66
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->this$0:Lcom/android/settings/KeyDownloadDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onReTipBtnClick()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->this$0:Lcom/android/settings/KeyDownloadDialogActivity;

    iget-object v1, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/KeyDownloadDialogActivity;->openInMarket(Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/android/settings/KeyDownloadDialogActivity$1;->this$0:Lcom/android/settings/KeyDownloadDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
