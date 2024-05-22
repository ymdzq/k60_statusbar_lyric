.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 6
    check-cast p1, Lcom/android/systemui/accessibility/floatingmenu/MenuEduTooltipView;

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->$r8$lambda$XAfj-tyjw4HL4aLKStFXq36-oMo(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;Landroid/view/View;)V

    .line 13
    return-void

    .line 16
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 20
    const v3, 0x7f130088    # @string/accessibility_floating_button_docking_tooltip 'Move button to the edge to hide it temporarily'

    .line 21
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 28
    iget-object v2, p1, Lcom/android/systemui/accessibility/floatingmenu/MenuEduTooltipView;->mMessageView:Landroid/widget/TextView;

    .line 31
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuEduTooltipView;->updateLocationAndVisibility()V

    .line 36
    const-string v0, "dock"

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mMenuListViewTouchHandler:Lcom/android/systemui/accessibility/floatingmenu/MenuListViewTouchHandler;

    .line 44
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;

    .line 46
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;I)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 54
    move-result-object p0

    .line 57
    iput-object p0, p1, Lcom/android/systemui/accessibility/floatingmenu/MenuListViewTouchHandler;->mOnActionDownEnd:Ljava/util/Optional;

    .line 58
    return-void

    .line 60
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    new-instance v0, Landroid/content/Intent;

    .line 64
    const-string v3, "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"

    .line 66
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    const/high16 v3, 0x10000000

    .line 71
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_BUTTON_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 76
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 81
    const-string v4, "android.intent.extra.COMPONENT_NAME"

    .line 82
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    new-instance v3, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    .line 87
    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda6;

    .line 89
    invoke-direct {v4, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;Landroid/content/Intent;)V

    .line 91
    invoke-direct {v3, v4}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;-><init>(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f130089    # @string/accessibility_floating_button_migration_tooltip 'Tap to open accessibility features. Customize or replace this button in Settings.\n\n<annotation id="l ...'

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v4

    .line 103
    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 104
    move-result-object v0

    .line 107
    filled-new-array {v3}, [Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    .line 108
    move-result-object v3

    .line 111
    invoke-static {v0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;)Ljava/lang/CharSequence;

    .line 112
    move-result-object v0

    .line 115
    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 116
    iget-object v2, p1, Lcom/android/systemui/accessibility/floatingmenu/MenuEduTooltipView;->mMessageView:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuEduTooltipView;->updateLocationAndVisibility()V

    .line 124
    const-string v0, "migration"

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;->mMenuListViewTouchHandler:Lcom/android/systemui/accessibility/floatingmenu/MenuListViewTouchHandler;

    .line 132
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;

    .line 134
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;I)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 142
    move-result-object p0

    .line 145
    iput-object p0, p1, Lcom/android/systemui/accessibility/floatingmenu/MenuListViewTouchHandler;->mOnActionDownEnd:Ljava/util/Optional;

    .line 146
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 150
.end method
