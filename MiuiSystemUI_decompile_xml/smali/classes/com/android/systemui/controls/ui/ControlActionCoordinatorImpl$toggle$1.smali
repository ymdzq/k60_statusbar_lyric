.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $isChecked:Z

.field final synthetic $templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggle$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggle$1;->$templateId:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggle$1;->$isChecked:Z

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggle$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 4
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggle$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 10
    new-instance v1, Landroid/service/controls/actions/BooleanAction;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggle$1;->$templateId:Ljava/lang/String;

    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$toggle$1;->$isChecked:Z

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 18
    invoke-direct {v1, v2, p0}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;Z)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    return-object p0
    .line 28
.end method
