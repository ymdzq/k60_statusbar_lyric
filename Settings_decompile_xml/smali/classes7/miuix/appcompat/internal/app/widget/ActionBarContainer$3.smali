.class Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$602(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$602(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    .line 220
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    .line 223
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    .line 226
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .locals 2

    .line 199
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    .line 201
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lmiuix/view/BlurableWidget;->setSupportBlur(Z)V

    .line 206
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    invoke-interface {p1, v1}, Lmiuix/view/BlurableWidget;->setEnableBlur(Z)V

    .line 208
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p0

    invoke-interface {p0, v0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    :cond_2
    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .locals 3

    .line 187
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->DEFAULT:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->DEFAULT:[I

    .line 189
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    move-result-object p0

    if-eqz v0, :cond_1

    .line 192
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    :goto_1
    const/16 v1, 0x42

    .line 190
    invoke-virtual {p1, p0, v0, v1}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    return-void
.end method
