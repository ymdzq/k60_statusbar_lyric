.class Lcom/android/settings/MiuiBandMode$1;
.super Ljava/lang/Object;
.source "MiuiBandMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiBandMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiBandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiBandMode;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {p1}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmSelection(Lcom/android/settings/MiuiBandMode;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {p1}, Lcom/android/settings/MiuiBandMode;->-$$Nest$mresetBands(Lcom/android/settings/MiuiBandMode;)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {p1}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmBandList(Lcom/android/settings/MiuiBandMode;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->clearChoices()V

    .line 156
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    iget-object p1, p1, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object p0, p0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {p0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmBandListAdapter(Lcom/android/settings/MiuiBandMode;)Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiBandMode$1;->this$0:Lcom/android/settings/MiuiBandMode;

    iget-object p1, p1, Lcom/android/settings/MiuiBandMode;->mBandsToSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 162
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/settings/MiuiBandMode$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiBandMode$1$1;-><init>(Lcom/android/settings/MiuiBandMode$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
