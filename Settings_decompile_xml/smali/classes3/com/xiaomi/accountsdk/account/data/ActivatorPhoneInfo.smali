.class public Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
.super Ljava/lang/Object;
.source "ActivatorPhoneInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_VERIFIED_DEFAULT_VALUE:Z = false

.field public static final NEED_VERIFY_DEFAULT_VALUE:Z = true


# instance fields
.field public final activatorToken:Ljava/lang/String;

.field public final copyWriter:Ljava/lang/String;

.field public final isVerified:Z

.field public final needVerify:Z

.field public final operatorLink:Ljava/lang/String;

.field public final phone:Ljava/lang/String;

.field public final phoneHash:Ljava/lang/String;

.field public final slotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->access$000(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phone:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->access$100(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phoneHash:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->access$200(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->activatorToken:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->access$300(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->slotId:I

    .line 25
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->access$400(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->copyWriter:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->access$500(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->operatorLink:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->access$600(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->needVerify:Z

    .line 28
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->access$700(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->isVerified:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 101
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "phone"

    .line 102
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phone:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone_hash"

    .line 103
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phoneHash:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activator_token"

    .line 104
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->activatorToken:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "slot_id"

    .line 105
    iget v1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->slotId:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "copy_writer"

    .line 106
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->copyWriter:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "operator_link"

    .line 107
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->operatorLink:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "need_verify"

    .line 108
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->needVerify:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_verified"

    .line 109
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->isVerified:Z

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
