.class public Lcom/android/settings/ai/AiSettingsItem;
.super Ljava/lang/Object;
.source "AiSettingsItem.java"


# instance fields
.field public mIndex:I

.field public name:Ljava/lang/String;

.field public selected:Z

.field public type:I

.field public voiceAssistantMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 12
    invoke-direct {p0, v0, v1, v1}, Lcom/android/settings/ai/AiSettingsItem;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/ai/AiSettingsItem;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/android/settings/ai/AiSettingsItem;->voiceAssistantMode:I

    .line 20
    iput-boolean p1, p0, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    .line 21
    iput p2, p0, Lcom/android/settings/ai/AiSettingsItem;->type:I

    .line 22
    iput p3, p0, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 28
    instance-of v0, p1, Lcom/android/settings/ai/AiSettingsItem;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/ai/AiSettingsItem;->type:I

    check-cast p1, Lcom/android/settings/ai/AiSettingsItem;

    iget p1, p1, Lcom/android/settings/ai/AiSettingsItem;->type:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AiSettingsItem{,ai_settings_item_name index = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",ai_settings_item_type = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/ai/AiSettingsItem;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
