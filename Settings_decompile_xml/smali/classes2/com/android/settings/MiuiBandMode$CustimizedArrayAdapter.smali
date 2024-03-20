.class Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MiuiBandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiBandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustimizedArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiBandMode;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiBandMode;Landroid/content/Context;I)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;->this$0:Lcom/android/settings/MiuiBandMode;

    .line 368
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmSelection(Lcom/android/settings/MiuiBandMode;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmSelection(Lcom/android/settings/MiuiBandMode;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 384
    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->areAllItemsEnabled()Z

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmSelection(Lcom/android/settings/MiuiBandMode;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiBandMode$CustimizedArrayAdapter;->this$0:Lcom/android/settings/MiuiBandMode;

    invoke-static {v0}, Lcom/android/settings/MiuiBandMode;->-$$Nest$fgetmSelection(Lcom/android/settings/MiuiBandMode;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 376
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result p0

    return p0
.end method
