.class Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;
.super Ljava/lang/Object;
.source "ResponsiveActionMenuView.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .locals 0

    .line 155
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-static {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$500(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->EXTRA_HEAVY:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->EXTRA_HEAVY:[I

    .line 139
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$300(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$400(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 140
    :goto_1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    move-result-object p0

    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    goto :goto_2

    :cond_2
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    :goto_2
    const/16 v1, 0x42

    .line 141
    invoke-virtual {p1, p0, v0, v1}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    return-void
.end method
