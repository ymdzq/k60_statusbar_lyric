.class final Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;
.super Lcom/miui/maml/MamlDrawable$MamlDrawableState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final mAnimIndex:I

.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLayerIndex:I

.field private final mPackageName:Ljava/lang/String;

.field private final mResourceManager:Lcom/miui/maml/ResourceManager;

.field private final mUseFancyWhenStatic:Z

.field private final mUseQuietWhenAnim:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 7
    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    .line 13
    iput p6, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mLayerIndex:I

    .line 15
    iput p7, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mAnimIndex:I

    .line 17
    iput-boolean p8, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseQuietWhenAnim:Z

    .line 19
    iput-boolean p9, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseFancyWhenStatic:Z

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public createDrawable()Lcom/miui/maml/MamlDrawable;
    .locals 11

    .line 1
    new-instance v10, Lcom/miui/maml/AnimatingDrawable;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 10
    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    .line 12
    iget v6, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mLayerIndex:I

    .line 14
    iget v7, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mAnimIndex:I

    .line 16
    iget-boolean v8, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseQuietWhenAnim:Z

    .line 18
    iget-boolean v9, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseFancyWhenStatic:Z

    .line 20
    move-object v0, v10

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    .line 23
    return-object v10
    .line 26
.end method
