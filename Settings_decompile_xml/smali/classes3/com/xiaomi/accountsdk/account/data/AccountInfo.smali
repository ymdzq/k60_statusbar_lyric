.class public Lcom/xiaomi/accountsdk/account/data/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoLoginUrl:Ljava/lang/String;

.field public final encryptedUserId:Ljava/lang/String;

.field public final hasLocalChannel:Ljava/lang/Boolean;

.field public final hasPwd:Z

.field public final passToken:Ljava/lang/String;

.field public final ph:Ljava/lang/String;

.field public final psecurity:Ljava/lang/String;

.field public final rePassToken:Ljava/lang/String;

.field public final security:Ljava/lang/String;

.field public final serviceId:Ljava/lang/String;

.field public final serviceToken:Ljava/lang/String;

.field public final slh:Ljava/lang/String;

.field public final stsCookies:Ljava/lang/String;

.field public final userId:Ljava/lang/String;

.field public final userSyncedUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->stsCookies:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "has_pwd"

    .line 224
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "user_synced_url"

    .line 225
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userSyncedUrl:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 227
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasLocalChannel:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/accountsdk/account/data/AccountInfo$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$000(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$100(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$200(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$300(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$400(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$500(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->stsCookies:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$600(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$700(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$800(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$900(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$1000(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$1100(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$1200(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    .line 103
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$1300(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userSyncedUrl:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->access$1400(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasLocalChannel:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;Lcom/xiaomi/accountsdk/account/data/AccountInfo$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAutoLoginUrl()Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getEncryptedUserId()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getHasPwd()Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    return p0
.end method

.method public getPassToken()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    return-object p0
.end method

.method public getPh()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    return-object p0
.end method

.method public getPsecurity()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    return-object p0
.end method

.method public getRePassToken()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    return-object p0
.end method

.method public getSlh()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountInfo{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", security=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 178
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->stsCookies:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "has_pwd"

    .line 192
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "user_synced_url"

    .line 193
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userSyncedUrl:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 195
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasLocalChannel:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
