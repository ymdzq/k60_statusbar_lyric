.class Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;
.super Ljava/lang/Object;
.source "ExtPhoneCallbackListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Result"
.end annotation


# instance fields
.field mData:Ljava/lang/Object;

.field mError:I

.field mSlotId:I

.field mStatus:Lcom/qti/extphone/Status;

.field mToken:Lcom/qti/extphone/Token;

.field final synthetic this$0:Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;


# direct methods
.method public constructor <init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput p2, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    .line 1070
    iput-object p3, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    .line 1071
    iput-object p4, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    .line 1072
    iput p5, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mError:I

    .line 1073
    iput-object p6, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{mSlotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
