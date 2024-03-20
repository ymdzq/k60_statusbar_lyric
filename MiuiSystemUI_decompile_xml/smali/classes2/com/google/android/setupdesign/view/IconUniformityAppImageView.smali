.class public Lcom/google/android/setupdesign/view/IconUniformityAppImageView;
.super Landroid/widget/ImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ON_L_PLUS:Z


# instance fields
.field public backdropColorResId:I

.field public final backdropDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 8
    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->ON_L_PLUS:Z

    .line 12
    return-void
    .line 14
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 3
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 6
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 9
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    sget-boolean v0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->ON_L_PLUS:Z

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 2
    const v0, 0x7f060909    # @color/sud_uniformity_backdrop_color '@android:color/white'

    .line 5
    iput v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 8
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 15
    iget p0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->backdropColorResId:I

    .line 16
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 18
    invoke-virtual {v1, p0}, Landroid/content/Context;->getColor(I)I

    .line 20
    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 24
    return-void
    .line 27
.end method
