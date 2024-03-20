.class Lcom/android/settings/wifi/EditTetherFragment$4;
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

    .line 235
    iput-object p1, p0, Lcom/android/settings/wifi/EditTetherFragment$4;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

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

    .line 239
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment$4;->this$0:Lcom/android/settings/wifi/EditTetherFragment;

    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p3}, Lcom/android/settings/wifi/EditTetherFragment;->-$$Nest$fputmBandIndex(Lcom/android/settings/wifi/EditTetherFragment;I)V

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
