.class public Lcom/android/systemui/AutoReinflateContainer;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final SUPPORTED_CHANGES:Ljava/util/Set;


# instance fields
.field public final mInflateListeners:Ljava/util/List;

.field public final mLastConfig:Landroid/content/res/Configuration;

.field public final mLayout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    move-result-object v0

    .line 6
    const/16 v1, 0x200

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 12
    const/high16 v2, -0x80000000

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 18
    const/16 v3, 0x1000

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v3

    .line 24
    const/high16 v4, 0x40000000    # 2.0f

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 30
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 31
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/systemui/AutoReinflateContainer;->SUPPORTED_CHANGES:Ljava/util/Set;

    .line 35
    return-void
    .line 37
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/content/res/Configuration;

    .line 12
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mLastConfig:Landroid/content/res/Configuration;

    .line 17
    sget-object v0, Lcom/android/systemui/R$styleable;->AutoReinflateContainer:[I

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 21
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 32
    move-result p2

    .line 35
    iput p2, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 41
    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string p1, "AutoReinflateContainer must contain a layout"

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    .line 52
.end method


# virtual methods
.method public final inflateLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayoutImpl()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 13
    if-gtz v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 27
    const/4 p0, 0x0

    .line 30
    throw p0
    .line 31
.end method

.method public inflateLayoutImpl()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    return-void
    .line 15
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mLastConfig:Landroid/content/res/Configuration;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4
    move-result p1

    .line 7
    sget-object v0, Lcom/android/systemui/AutoReinflateContainer;->SUPPORTED_CHANGES:Ljava/util/Set;

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v1

    .line 29
    and-int/2addr v1, p1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 33
    :cond_1
    return-void
    .line 36
.end method
