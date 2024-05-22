.class public final Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 5
    const v1, 0x10402a6    # @android:string/config_wearSysUiPackage

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 14
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 18
    new-instance p1, Landroid/graphics/drawable/shapes/PathShape;

    .line 21
    const/high16 v1, 0x42c80000    # 100.0f

    .line 23
    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 25
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ShapeDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    new-instance p2, Landroid/graphics/Path;

    .line 5
    const p3, 0x10402a6    # @android:string/config_wearSysUiPackage

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 14
    move-result-object p1

    .line 17
    invoke-direct {p2, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 18
    new-instance p1, Landroid/graphics/drawable/shapes/PathShape;

    .line 21
    const/high16 p3, 0x42c80000    # 100.0f

    .line 23
    invoke-direct {p1, p2, p3, p3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 25
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 28
    return-void
    .line 31
.end method
