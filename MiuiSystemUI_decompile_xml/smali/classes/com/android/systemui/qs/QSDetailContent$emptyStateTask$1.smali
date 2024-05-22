.class final Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailContent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailContent;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->$context:Landroid/content/Context;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailContent;->access$getEmptyText$p(Lcom/android/systemui/qs/QSDetailContent;)Landroid/widget/TextView;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    move-object v0, v1

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 12
    invoke-static {v2}, Lcom/android/systemui/qs/QSDetailContent;->access$getTextRes$p(Lcom/android/systemui/qs/QSDetailContent;)I

    .line 14
    move-result v2

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->$context:Landroid/content/Context;

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 27
    invoke-static {v2}, Lcom/android/systemui/qs/QSDetailContent;->access$getControlCenterController$p(Lcom/android/systemui/qs/QSDetailContent;)Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 29
    move-result-object v2

    .line 32
    iget-boolean v2, v2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 33
    if-eqz v2, :cond_1

    .line 35
    const v2, 0x7f0600af    # @color/control_center_detail_empty_text_color '#66ffffff'

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    const v2, 0x7f0607ca    # @color/qs_detail_empty_state_text_color '#66000000'

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->$context:Landroid/content/Context;

    .line 44
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 46
    move-result-object v3

    .line 49
    sget-object v4, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 52
    move-result v0

    .line 55
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 56
    invoke-static {v2}, Lcom/android/systemui/qs/QSDetailContent;->access$getEmptyText$p(Lcom/android/systemui/qs/QSDetailContent;)Landroid/widget/TextView;

    .line 58
    move-result-object v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    move-object v2, v1

    .line 64
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->$context:Landroid/content/Context;

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 74
    invoke-static {v3}, Lcom/android/systemui/qs/QSDetailContent;->access$getIconRes$p(Lcom/android/systemui/qs/QSDetailContent;)I

    .line 76
    move-result v3

    .line 79
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->$context:Landroid/content/Context;

    .line 80
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 82
    move-result-object v4

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$emptyStateTask$1;->this$0:Lcom/android/systemui/qs/QSDetailContent;

    .line 92
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 94
    invoke-static {p0}, Lcom/android/systemui/qs/QSDetailContent;->access$getEmptyIcon$p(Lcom/android/systemui/qs/QSDetailContent;)Landroid/widget/ImageView;

    .line 97
    move-result-object p0

    .line 100
    if-nez p0, :cond_3

    .line 101
    goto :goto_1

    .line 103
    :cond_3
    move-object v1, p0

    .line 104
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    return-object p0
    .line 110
.end method
