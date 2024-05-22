.class public Lcom/android/systemui/plugins/qs/QSTile$SlashState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x2
.end annotation


# static fields
.field public static final VERSION:I = 0x2


# instance fields
.field public isSlashed:Z

.field public rotation:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$SlashState;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    .line 4
    iget v1, p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 7
    iput v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 11
    iput-boolean p0, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 13
    return-object v0
    .line 15
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    :try_start_0
    move-object v1, p1

    .line 6
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 7
    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 9
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 11
    cmpl-float v1, v1, v2

    .line 13
    if-nez v1, :cond_1

    .line 15
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 17
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 19
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-ne p1, p0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 25
    :catch_0
    :cond_1
    return v0
    .line 26
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "isSlashed="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",rotation="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method
