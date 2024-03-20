.class Lcom/android/settings/wifi/EditTetherFragment$3;
.super Ljava/lang/Object;
.source "EditTetherFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/EditTetherFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/EditTetherFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/EditTetherFragment;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/settings/wifi/EditTetherFragment$3;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 196
    iget-object p1, p0, Lcom/android/settings/wifi/EditTetherFragment$3;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-static {p1, p3}, Lcom/android/settings/wifi/EditTetherFragment;->-$$Nest$fputmIdentifyIndex(Lcom/android/settings/wifi/EditTetherFragment;I)V

    .line 197
    iget-object p1, p0, Lcom/android/settings/wifi/EditTetherFragment$3;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/EditTetherFragment;->-$$Nest$fputmIsIdentifyChanged(Lcom/android/settings/wifi/EditTetherFragment;Z)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/wifi/EditTetherFragment$3;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/EditTetherFragment;->-$$Nest$fgetTAG(Lcom/android/settings/wifi/EditTetherFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ap identify changed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment$3;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/EditTetherFragment;->-$$Nest$fgetmIdentifyIndex(Lcom/android/settings/wifi/EditTetherFragment;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
