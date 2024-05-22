.class Lmiuix/appcompat/app/AlertController$8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public static synthetic $r8$lambda$zcqbilKRoYus9QpS406yMUiCxeU(Lmiuix/appcompat/app/AlertController$8;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController$8;->lambda$onApplyWindowInsets$0(Landroid/view/WindowInsets;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$onApplyWindowInsets$0(Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    .line 4
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 9
    iget-object v2, v2, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 11
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 13
    move-result v2

    .line 16
    add-float/2addr v2, v1

    .line 17
    float-to-int v1, v2

    .line 18
    iput v1, v0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 19
    if-eqz p1, :cond_0

    .line 21
    if-eqz p2, :cond_0

    .line 23
    new-instance v0, Lmiuix/appcompat/app/AlertController$8$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {v0, p0, p2}, Lmiuix/appcompat/app/AlertController$8$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertController$8;Landroid/view/WindowInsets;)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_0
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 33
    return-object p0
    .line 35
.end method
