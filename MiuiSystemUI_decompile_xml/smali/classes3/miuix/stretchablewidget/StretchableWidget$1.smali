.class public final Lmiuix/stretchablewidget/StretchableWidget$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lmiuix/stretchablewidget/StretchableWidget;


# direct methods
.method public constructor <init>(Lmiuix/stretchablewidget/StretchableWidget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget$1;->this$0:Lmiuix/stretchablewidget/StretchableWidget;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableWidget$1;->this$0:Lmiuix/stretchablewidget/StretchableWidget;

    .line 2
    iget-boolean p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 4
    xor-int/lit8 p1, p1, 0x1

    .line 6
    iput-boolean p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 8
    new-instance p1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 10
    invoke-direct {p1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 12
    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [F

    .line 16
    fill-array-data v0, :array_0

    .line 18
    const/4 v1, -0x2

    .line 21
    invoke-virtual {p1, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 26
    iget-boolean v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mIsExpand:Z

    .line 28
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 33
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 39
    move-result-object v0

    .line 42
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 43
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 45
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 48
    move-result-object v1

    .line 51
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 52
    invoke-virtual {v1, v2, p1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 54
    move-result-object p1

    .line 57
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 58
    move-result-object p1

    .line 61
    const-string v1, "start"

    .line 62
    invoke-interface {v0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 64
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f08164a    # @drawable/miuix_stretchable_widget_state_expand 'res/drawable/miuix_stretchable_widget_state_expand.xml'

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 72
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 75
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 87
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 93
    move-result-object v0

    .line 96
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 97
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 99
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 102
    move-result-object v1

    .line 105
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 106
    invoke-virtual {v1, v2, p1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 108
    move-result-object p1

    .line 111
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 112
    move-result-object p1

    .line 115
    const-string v1, "end"

    .line 116
    invoke-interface {v0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 118
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mStateImage:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f081649    # @drawable/miuix_stretchable_widget_state_collapse 'res/drawable/miuix_stretchable_widget_state_collapse.xml'

    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 126
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget;->mTopLine:Landroid/view/View;

    .line 129
    const/16 v0, 0x8

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object p0, p0, Lmiuix/stretchablewidget/StretchableWidget;->mButtonLine:Landroid/view/View;

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_0
    return-void

    .line 141
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
    .line 142
.end method
