.class final Lmiui/telephony/CloudTelephonyManager$TypedSimId;
.super Ljava/lang/Object;
.source "CloudTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/CloudTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypedSimId"
.end annotation


# static fields
.field private static final SP:Ljava/lang/String; = ","

.field public static final TYPE_ICCID:I = 0x1

.field public static final TYPE_IMSI:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput p1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    .line 486
    iput-object p2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    return-void
.end method

.method static parse(Ljava/lang/String;)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .locals 4

    const-string v0, ","

    .line 528
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 529
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    new-instance p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 532
    :cond_0
    new-instance v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    invoke-direct {v0, v3, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 498
    const-class v2, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 502
    :cond_1
    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 504
    iget v2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    iget v3, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    if-eq v2, v3, :cond_2

    return v1

    .line 507
    :cond_2
    iget-object p0, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    if-eqz p0, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 517
    iget v0, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    mul-int/lit8 v0, v0, 0x1f

    .line 518
    iget-object p0, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toPlain()Ljava/lang/String;
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 524
    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
