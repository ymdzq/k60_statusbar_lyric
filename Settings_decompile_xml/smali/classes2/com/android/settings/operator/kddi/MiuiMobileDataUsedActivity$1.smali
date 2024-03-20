.class Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;
.super Landroid/os/Handler;
.source "MiuiMobileDataUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 38
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-static {p1}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->-$$Nest$fgetcount(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 43
    iget-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->-$$Nest$fputcount(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;I)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-static {p1, p1}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->-$$Nest$mshowDataConnectionDialog(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;Landroid/content/Context;)V

    .line 45
    iget-object p0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-static {p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->-$$Nest$fgetmProgressBar(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-static {p1}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->-$$Nest$fgetcount(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->-$$Nest$fputcount(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;I)V

    .line 48
    iget-object p0, p0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity$1;->this$0:Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-static {p0}, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;->-$$Nest$mshowCheckMobileDataDialog(Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;)V

    :goto_0
    return-void
.end method
