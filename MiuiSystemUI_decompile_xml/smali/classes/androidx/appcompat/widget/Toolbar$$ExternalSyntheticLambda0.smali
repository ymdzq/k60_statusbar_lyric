.class public final synthetic Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/Toolbar;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/Toolbar;

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->invalidateMenu()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/widget/Toolbar;

    .line 14
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 16
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 22
    :goto_1
    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 26
    :cond_1
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method
