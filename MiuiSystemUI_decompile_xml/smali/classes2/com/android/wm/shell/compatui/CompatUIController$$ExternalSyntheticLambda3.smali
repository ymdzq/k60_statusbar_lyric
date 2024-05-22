.class public final synthetic Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUIController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 8
    move-result p0

    .line 11
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateVisibility(Z)V

    .line 12
    return-void
    .line 15
.end method
