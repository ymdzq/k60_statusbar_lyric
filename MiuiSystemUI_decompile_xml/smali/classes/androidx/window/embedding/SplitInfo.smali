.class public final Landroidx/window/embedding/SplitInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final primaryActivityStack:Landroidx/window/embedding/ActivityStack;

.field public final secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

.field public final splitAttributes:Landroidx/window/embedding/SplitAttributes;

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/SplitAttributes;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 5
    iput-object p2, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 7
    iput-object p3, p0, Landroidx/window/embedding/SplitInfo;->splitAttributes:Landroidx/window/embedding/SplitAttributes;

    .line 9
    iput-object p4, p0, Landroidx/window/embedding/SplitInfo;->token:Landroid/os/IBinder;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitInfo;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/window/embedding/SplitInfo;

    .line 12
    iget-object v1, p1, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 14
    iget-object v3, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 25
    iget-object v3, p1, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Landroidx/window/embedding/SplitInfo;->splitAttributes:Landroidx/window/embedding/SplitAttributes;

    .line 36
    iget-object v3, p1, Landroidx/window/embedding/SplitInfo;->splitAttributes:Landroidx/window/embedding/SplitAttributes;

    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget-object p0, p0, Landroidx/window/embedding/SplitInfo;->token:Landroid/os/IBinder;

    .line 47
    iget-object p1, p1, Landroidx/window/embedding/SplitInfo;->token:Landroid/os/IBinder;

    .line 49
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    return v0
    .line 58
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 2
    invoke-virtual {v0}, Landroidx/window/embedding/ActivityStack;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 10
    invoke-virtual {v1}, Landroidx/window/embedding/ActivityStack;->hashCode()I

    .line 12
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget-object v0, p0, Landroidx/window/embedding/SplitInfo;->splitAttributes:Landroidx/window/embedding/SplitAttributes;

    .line 19
    invoke-virtual {v0}, Landroidx/window/embedding/SplitAttributes;->hashCode()I

    .line 21
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object p0, p0, Landroidx/window/embedding/SplitInfo;->token:Landroid/os/IBinder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 30
    move-result p0

    .line 33
    add-int/2addr p0, v0

    .line 34
    return p0
    .line 35
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "SplitInfo:{"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "primaryActivityStack="

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", "

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v3, "secondaryActivityStack="

    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v3, "splitAttributes="

    .line 58
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Landroidx/window/embedding/SplitInfo;->splitAttributes:Landroidx/window/embedding/SplitAttributes;

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v2, "token="

    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Landroidx/window/embedding/SplitInfo;->token:Landroid/os/IBinder;

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string/jumbo p0, "}"

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    return-object p0
    .line 109
.end method
