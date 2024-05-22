.class public final Lmiuix/preference/StretchableWidgetPreference$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lmiuix/preference/StretchableWidgetPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/StretchableWidgetPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/StretchableWidgetPreference$1;->this$0:Lmiuix/preference/StretchableWidgetPreference;

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
    iget-object p0, p0, Lmiuix/preference/StretchableWidgetPreference$1;->this$0:Lmiuix/preference/StretchableWidgetPreference;

    .line 2
    iget-boolean p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 4
    xor-int/lit8 p1, p1, 0x1

    .line 6
    iput-boolean p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 8
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, -0x2

    .line 12
    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 15
    invoke-direct {p1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 17
    new-array v1, v1, [F

    .line 20
    fill-array-data v1, :array_0

    .line 22
    invoke-virtual {p1, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 25
    move-result-object p1

    .line 28
    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 29
    iget-object v1, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 31
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 37
    move-result-object v1

    .line 40
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 41
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 43
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 46
    move-result-object v0

    .line 49
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 50
    invoke-virtual {v0, v2, p1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 52
    move-result-object p1

    .line 55
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 56
    move-result-object p1

    .line 59
    const-string v0, "start"

    .line 60
    invoke-interface {v1, v0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 62
    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f08164a    # @drawable/miuix_stretchable_widget_state_expand 'res/drawable/miuix_stretchable_widget_state_expand.xml'

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 73
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object p0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 85
    invoke-direct {p1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 87
    new-array v1, v1, [F

    .line 90
    fill-array-data v1, :array_1

    .line 92
    invoke-virtual {p1, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 95
    move-result-object p1

    .line 98
    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 99
    iget-object v1, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 101
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 106
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 107
    move-result-object v1

    .line 110
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 111
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 113
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 116
    move-result-object v0

    .line 119
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 120
    invoke-virtual {v0, v2, p1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 122
    move-result-object p1

    .line 125
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 126
    move-result-object p1

    .line 129
    const-string v0, "end"

    .line 130
    invoke-interface {v1, v0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 132
    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f081649    # @drawable/miuix_stretchable_widget_state_collapse 'res/drawable/miuix_stretchable_widget_state_collapse.xml'

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 140
    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 143
    const/16 v0, 0x8

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object p0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 150
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 155
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 156
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
    .line 164
.end method
