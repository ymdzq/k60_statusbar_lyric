.class Lcom/android/settings/wifi/WpsFragment$2;
.super Ljava/lang/Object;
.source "WpsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/wifi/WpsFragment$2;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/wifi/WpsFragment$2;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$mupdateSummaryText(Lcom/android/settings/wifi/WpsFragment;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/wifi/WpsFragment$2;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmTimeoutBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/wifi/WpsFragment$2;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fgetmTimeoutBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/WpsFragment$2;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$mstop(Lcom/android/settings/wifi/WpsFragment;)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$2;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$mstart(Lcom/android/settings/wifi/WpsFragment;)V

    return-void
.end method
