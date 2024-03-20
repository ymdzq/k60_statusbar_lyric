.class Lmiuix/nestedheader/widget/NestedHeaderLayout$2;
.super Ljava/lang/Object;
.source "NestedHeaderLayout.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$400(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :goto_0
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 266
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$402(Lmiuix/nestedheader/widget/NestedHeaderLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .locals 4

    .line 242
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010590    # @android:attr/isLightTheme

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->DEFAULT:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->DEFAULT:[I

    .line 244
    :goto_0
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    move-result-object v1

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    .line 246
    :goto_1
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$300(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result p0

    const/16 v2, 0x42

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 247
    aget v1, v1, p0

    filled-new-array {v1}, [I

    move-result-object v1

    .line 248
    aget p0, v0, p0

    filled-new-array {p0}, [I

    move-result-object p0

    .line 249
    invoke-virtual {p1, v1, p0, v2}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    goto :goto_2

    .line 255
    :cond_2
    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    :goto_2
    return-void
.end method
