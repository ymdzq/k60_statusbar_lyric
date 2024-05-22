.class public Lmiuix/animation/property/ValueTargetObject;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mFieldManager:Lmiuix/animation/utils/FieldManager;

.field private mRef:Ljava/lang/ref/WeakReference;

.field private mTempObj:Ljava/lang/Object;

.field private mValueMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/animation/utils/FieldManager;

    .line 5
    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->isBuiltInClass(Ljava/lang/Class;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    iput-object p1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mRef:Ljava/lang/ref/WeakReference;

    .line 37
    :goto_0
    return-void
    .line 39
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    return v0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v2

    .line 17
    if-eq v1, v2, :cond_4

    .line 18
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 20
    if-eqz v1, :cond_2

    .line 22
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_3
    return v0

    .line 40
    :cond_4
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 41
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 43
    if-eqz v0, :cond_5

    .line 45
    iget-object p0, p1, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 47
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_5
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {p1}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result p0

    .line 65
    return p0
    .line 66
.end method

.method public getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 8
    if-ne v1, v0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget-object p0, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    .line 28
    :cond_2
    :goto_1
    iget-object p0, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 29
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    return-object p0
    .line 35
.end method

.method public getRealObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 11
    :goto_0
    return-object p0
    .line 13
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 17
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
    .line 23
.end method

.method public isValid()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    .line 8
    if-ne v1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    .line 21
    invoke-virtual {v1, v0, p1, p2, p3}, Lmiuix/animation/utils/FieldManager;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 23
    move-result p2

    .line 26
    if-nez p2, :cond_2

    .line 27
    :cond_1
    iget-object p0, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 29
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_2
    return-void

    .line 34
    :cond_3
    :goto_0
    iget-object p0, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 35
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
    .line 40
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ValueTargetObject{"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, "}"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method
