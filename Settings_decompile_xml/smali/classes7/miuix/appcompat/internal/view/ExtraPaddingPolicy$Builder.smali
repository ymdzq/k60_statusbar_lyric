.class public Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
.super Ljava/lang/Object;
.source "ExtraPaddingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-direct {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    return-void
.end method


# virtual methods
.method public create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
    .locals 0

    .line 185
    iget-object p0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    return-object p0
.end method

.method public createDefault(I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x29e

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3c0

    .line 191
    filled-new-array {v2, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p0

    const/16 p1, 0x24

    const/16 v0, 0x64

    filled-new-array {v1, p1, v0}, [I

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p0

    filled-new-array {v2}, [I

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHoldsInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p0

    const/16 p1, 0x2c

    filled-new-array {v1, p1}, [I

    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDpInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 205
    filled-new-array {v2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p0

    const/16 p1, 0x1c

    filled-new-array {v1, p1}, [I

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public varargs setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .locals 1

    .line 170
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$102(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method

.method public varargs setPaddingsDpInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .locals 1

    .line 180
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$302(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method

.method public varargs setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .locals 1

    .line 165
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$002(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method

.method public varargs setThreshHoldsInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .locals 1

    .line 175
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$202(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method
