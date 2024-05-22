.class Lcom/miui/maml/util/ConfigFile$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# instance fields
.field final synthetic this$1:Lcom/miui/maml/util/ConfigFile$1;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/ConfigFile$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "id"

    .line 6
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "StringInput"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 17
    const-string v3, "default"

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 22
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 24
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    goto/16 :goto_1

    .line 33
    :cond_0
    const-string v2, "CheckBox"

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 43
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 45
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    const-string v0, "1"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    const-string v0, "0"

    .line 60
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    goto :goto_1

    .line 65
    :cond_2
    const-string v2, "NumberInput"

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v2, :cond_3

    .line 73
    invoke-static {p1, v3, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 75
    move-result p1

    .line 78
    float-to-double v2, p1

    .line 79
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 80
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 82
    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    goto :goto_1

    .line 91
    :cond_3
    const-string v2, "StringChoice"

    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 100
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 102
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 107
    invoke-virtual {p0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    goto :goto_1

    .line 111
    :cond_4
    const-string v2, "NumberChoice"

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 118
    invoke-static {p1, v3, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 120
    move-result p1

    .line 123
    float-to-double v2, p1

    .line 124
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 125
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 127
    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 132
    invoke-virtual {p0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    goto :goto_1

    .line 136
    :cond_5
    const-string v1, "AppPicker"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 145
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 147
    invoke-static {p1}, Lcom/miui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;

    .line 149
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->putTask(Lcom/miui/maml/util/Task;)V

    .line 153
    :cond_6
    :goto_1
    return-void
    .line 156
.end method
