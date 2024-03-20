.class Lcom/android/settings/locale/MiuiLocaleSettings$1;
.super Landroid/os/Handler;
.source "MiuiLocaleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/locale/MiuiLocaleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/locale/MiuiLocaleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings$1;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$1;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MiuiLocaleSettings"

    const-string p1, "[mHandler.handleMessage]getActivity is null"

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings$1;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-static {p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/locale/MiuiLocaleSettings;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 98
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$1;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-static {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/locale/MiuiLocaleSettings;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$1;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->finish(Z)V

    :cond_3
    :goto_0
    return-void
.end method
