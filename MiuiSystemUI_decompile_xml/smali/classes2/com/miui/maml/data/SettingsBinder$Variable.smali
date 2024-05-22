.class Lcom/miui/maml/data/SettingsBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

.field public mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/data/SettingsBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 4
    const-string p1, "category"

    .line 7
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    const-string/jumbo p3, "secure"

    .line 13
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->Secure:Lcom/miui/maml/data/SettingsBinder$Category;

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->System:Lcom/miui/maml/data/SettingsBinder$Category;

    .line 25
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    .line 27
    const-string p1, "key"

    .line 29
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 35
    return-void
    .line 37
.end method


# virtual methods
.method public query()V
    .locals 7

    .line 1
    sget-object v0, Lcom/miui/maml/data/SettingsBinder$1;->$SwitchMap$com$miui$maml$data$SettingsBinder$Category:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x6

    .line 13
    const/4 v3, 0x5

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x2

    .line 17
    if-eq v0, v1, :cond_6

    .line 18
    if-eq v0, v6, :cond_0

    .line 20
    goto/16 :goto_0

    .line 22
    :cond_0
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 24
    if-eq v0, v6, :cond_4

    .line 26
    if-eq v0, v5, :cond_3

    .line 28
    if-eq v0, v4, :cond_2

    .line 30
    if-eq v0, v3, :cond_1

    .line 32
    if-eq v0, v2, :cond_1

    .line 34
    goto/16 :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 38
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 40
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 44
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 46
    double-to-float v2, v2

    .line 48
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 49
    move-result v0

    .line 52
    float-to-double v0, v0

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 54
    goto/16 :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 59
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 61
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 65
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 67
    double-to-long v2, v2

    .line 69
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 70
    move-result-wide v0

    .line 73
    long-to-double v0, v0

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 75
    goto/16 :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 80
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 82
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 86
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 88
    double-to-int v2, v2

    .line 90
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 91
    move-result v0

    .line 94
    int-to-double v0, v0

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 96
    goto/16 :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 101
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 103
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 107
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    if-nez v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 115
    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 117
    goto :goto_0

    .line 120
    :cond_6
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 121
    if-eq v0, v6, :cond_a

    .line 123
    if-eq v0, v5, :cond_9

    .line 125
    if-eq v0, v4, :cond_8

    .line 127
    if-eq v0, v3, :cond_7

    .line 129
    if-eq v0, v2, :cond_7

    .line 131
    goto :goto_0

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 134
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 136
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 140
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 142
    double-to-float v2, v2

    .line 144
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 145
    move-result v0

    .line 148
    float-to-double v0, v0

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 150
    goto :goto_0

    .line 153
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 154
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 156
    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 160
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 162
    double-to-long v2, v2

    .line 164
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 165
    move-result-wide v0

    .line 168
    long-to-double v0, v0

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 170
    goto :goto_0

    .line 173
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 174
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 176
    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 180
    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    .line 182
    double-to-int v2, v2

    .line 184
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 185
    move-result v0

    .line 188
    int-to-double v0, v0

    .line 189
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 190
    goto :goto_0

    .line 193
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 194
    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    .line 196
    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 200
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 205
    if-nez v0, :cond_b

    .line 206
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 208
    :cond_b
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 210
    :goto_0
    return-void
    .line 213
.end method
