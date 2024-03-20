.class public final Landroidx/leanback/widget/SearchBar$10;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/SearchBar;

.field public final synthetic val$resId:I


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$10;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 2
    iput p2, p0, Landroidx/leanback/widget/SearchBar$10;->val$resId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar$10;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    .line 4
    iget v1, p0, Landroidx/leanback/widget/SearchBar$10;->val$resId:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 8
    move-result v3

    .line 11
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$10;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 12
    iget-object v2, p0, Landroidx/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    .line 14
    const/high16 v4, 0x3f800000    # 1.0f

    .line 16
    const/high16 v5, 0x3f800000    # 1.0f

    .line 18
    const/4 v6, 0x1

    .line 20
    const/4 v7, 0x0

    .line 21
    const/high16 v8, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 24
    return-void
    .line 27
.end method
