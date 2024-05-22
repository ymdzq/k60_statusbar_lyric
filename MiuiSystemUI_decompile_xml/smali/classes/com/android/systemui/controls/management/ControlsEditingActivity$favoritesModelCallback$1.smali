.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onFirstChange()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->saveButton:Landroid/view/View;

    .line 4
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    return-void
    .line 13
.end method
