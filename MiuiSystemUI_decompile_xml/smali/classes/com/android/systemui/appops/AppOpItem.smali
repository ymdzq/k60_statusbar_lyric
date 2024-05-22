.class public final Lcom/android/systemui/appops/AppOpItem;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCode:I

.field public mIsDisabled:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mState:Ljava/lang/StringBuilder;

.field public final mTimeStartedElapsed:J

.field public final mUid:I


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 5
    iput p2, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 7
    iput-object p5, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 9
    iput-wide p3, p0, Lcom/android/systemui/appops/AppOpItem;->mTimeStartedElapsed:J

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string p4, "AppOpItem(Op code="

    .line 18
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, ", UID="

    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, ", Package name="

    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, ", Paused="

    .line 42
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    .line 47
    return-void
    .line 49
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    .line 2
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    .line 4
    const-string v1, ")"

    .line 6
    invoke-static {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method
