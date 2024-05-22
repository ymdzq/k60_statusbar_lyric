.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mEduTooltipView:Ljava/util/Optional;

    .line 10
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda5;

    .line 12
    const/4 v2, 0x4

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;I)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 18
    return-void

    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 22
    invoke-static {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->$r8$lambda$tUi41ZKYXKceDf6lZ0gh4nBI6HQ(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;)V

    .line 24
    return-void

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 30
    const/16 v0, 0x8

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 38
.end method
